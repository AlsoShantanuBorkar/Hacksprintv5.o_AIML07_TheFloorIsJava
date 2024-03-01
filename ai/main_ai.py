from dotenv import load_dotenv
from PyPDF2 import PdfReader
from langchain.text_splitter import RecursiveCharacterTextSplitter
import os
from langchain_google_genai import GoogleGenerativeAIEmbeddings, ChatGoogleGenerativeAI
import google.generativeai as genai
from langchain_community.vectorstores import FAISS
from langchain.chains.question_answering import load_qa_chain
from langchain.prompts import PromptTemplate
from core.config import Settings

load_dotenv()

genai.configure(api_key=Settings.GEMINI_API_KEY)

def get_text_from_pdf(docs):
    text = ""
    pdf_reader = PdfReader(docs)
    for page in pdf_reader.pages:
        text += page.extract_text()
    return text


def get_chunks_from_text(text):
    text_splitter = RecursiveCharacterTextSplitter(
        chunk_size=10000, chunk_overlap=1000)
    chunks = text_splitter.split_text(text)
    return chunks


def get_vector_store(chunks, where_to):
    embeddings = GoogleGenerativeAIEmbeddings(model="models/embedding-001")
    vector_store = FAISS.from_texts(chunks, embedding=embeddings)
    vector_store.save_local(where_to)

def vectorize(path, where_to):
    raw_text = get_text_from_pdf(path)
    text_chunks = get_chunks_from_text(raw_text)
    get_vector_store(text_chunks, where_to)
    print(f"{path}'s Vector Store Created!")

# vectorize("cpact.pdf", "vectorstore/cpact_index")

def get_conversational_chain():
    prompt_template = """
    You are a helpful and resourceful bot and your job is to understand the user's question \
    properly and then respond with a solution that is in accordance to the laws as stated \
    in the given corpus or knowledge base. Your response MUST be structured this way - First \
    state the corresponding law from the corpus, and then frame the appropriate response \
    that aims to solve the user's problem. Most importantly, your aim is to convey your \
    solution in an easy to understand manner, and to-the-point. You are a friendly lawful \
    bot that utilizes indian consumer laws to craft appropriate solutions catering to the \
    user's specific problem.

    Corpus:\n {context}\n
    Question: \n{question}\n

    Answer:
    """
    model = ChatGoogleGenerativeAI(model="gemini-pro", temperature=0.3)
    prompt = PromptTemplate(template=prompt_template,
                            input_variables=["context", "question"])
    # model = genai.GenerativeModel("gemini-pro")
    chain = load_qa_chain(model, chain_type="stuff", prompt=prompt)
    return chain

def get_advice(query):
    embeddings = GoogleGenerativeAIEmbeddings(model="models/embedding-001")
    new_db = FAISS.load_local("vectorstore/cpact_index", embeddings)
    docs = new_db.similarity_search(query)
    chain = get_conversational_chain()
    response = chain(
        {"input_documents":docs, "question":query},
        return_only_outputs=True
    )
    response_from_rag = response["output_text"]
    # return response_from_rag
    refiner = genai.GenerativeModel("gemini-pro")
    refining_prompt = """
    You're the best lawyer in the world. Your number 1 priority is to help, serve and cater to your client's needs in the best way possible. REMEMBER that the client may not be aware of all the legal jargon, and it is your job to be verbose and clarify it all in an easy to understand manner. You will be provided some context from the current laws along with the client's query. Your mission is to return aappropriate response for their query. Remember, be verbose and friendly about it.

    This is how your thought process must be :

    Step 1) State the exact law from the context.
    Step 2) Then explain what it means.
    Step 3) Elaborate how it applies to the client's situation.
    Step 4) Inform what the actions the client needs to take now.

    Don't display output as if you're a bot. Remember, you're a lawyer so structure your responses in a way a lawyer would speak.

    USER_QUERY : 
    """
    final_output = refiner.generate_content(f"{refining_prompt}\n{query}\nCONTEXT:\n{response_from_rag}")
    return final_output.text

que = """
I bought a fridge from Amazon 2 days ago, which is now malfunctioning. The sellers did not give me any warranty, it was all verbal and now they're refusing to replace it. What should I do?
"""
answer = get_advice(que)
print(answer)
