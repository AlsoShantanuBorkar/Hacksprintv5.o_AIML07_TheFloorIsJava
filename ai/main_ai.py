import json
from dotenv import load_dotenv
from PyPDF2 import PdfReader
from langchain.text_splitter import RecursiveCharacterTextSplitter
import os
from langchain_google_genai import GoogleGenerativeAIEmbeddings, ChatGoogleGenerativeAI
import google.generativeai as genai
from langchain_community.vectorstores import FAISS
from langchain.chains.question_answering import load_qa_chain
from langchain.prompts import PromptTemplate
# from ..core.config import settings

G_API_KEY = "AIzaSyCjt1QbypLJhU4Z6G5akuzB5pwwvoWJ8Fg"

genai.configure(api_key=G_API_KEY)

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

gateway_prompt = """
You are an extremely skillful master of understanding any text passage and categorizing it into various categories with absolute precision. Once you are provided with the target categories, you are unstoppable. You can then categorize any given text passage perfectly.

Here are the target categories :

1. criminal_index - Any query / text passage that falls under jurisdiction of the criminal law in India.
2. family_index - Any query / text passage that falls under jurisdiction of the family law in India.
3. labour_index - Any query / text passage that falls under jurisdiction of the labour law in India.
4. property_index - Any query / text passage that falls under jurisdiction of the property law in India.and

You are provided the user's query as well, and your main mission is to categorize it accordingly, by clearly understanding the query first.

IMPORTANT : DO NOT categorize the query as anything other than the given 4 target categories.
IMPORTANT : Your response MUST be ONLY the category itself, and nothing else.

Your Output should be simply one of these four :

"criminal_index" or "family_index" or "labour_index" or "property_index"

Nothing else should be returned apart from the categories, no matter what.

USER_QUERY :
"""

def gateway(uq):
    categorizer = genai.GenerativeModel("gemini-pro")
    category = categorizer.generate_content(f"{gateway_prompt}\n{uq}").text
    return category

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

    Corpus:\n{context}\n
    Question: \n{question}\n

    Answer:
    """
    model = ChatGoogleGenerativeAI(model="gemini-pro", temperature=0.3, google_api_key=G_API_KEY)
    prompt = PromptTemplate(template=prompt_template,
                            input_variables=["context", "question"])
    # model = genai.GenerativeModel("gemini-pro")
    chain = load_qa_chain(model, chain_type="stuff", prompt=prompt)
    return chain

def extract_info(query, category):
    embeddings = GoogleGenerativeAIEmbeddings(model="models/embedding-001", google_api_key=G_API_KEY)
    new_db = FAISS.load_local(f"ai/vectorstore/{category}", embeddings)
    docs = new_db.similarity_search(query)
    chain = get_conversational_chain()
    response = chain(
        {"input_documents":docs, "question":query},
        return_only_outputs=True
    )
    response_from_rag = response["output_text"]
    print(response_from_rag)
    # return response_from_rag
    refiner = genai.GenerativeModel("gemini-pro")
    refining_prompt = """
    You're the best lawyer in the India. Your number 1 priority is to help, serve and cater to your client's needs in the best way possible. REMEMBER that the client may not be aware of all the legal jargon, and it is your job to be verbose and clarify it all in an easy to understand manner. You will be provided some context from the current laws along with the client's query. Your mission is to return aappropriate response for their query. Remember, be verbose and friendly about it.

    This is how your thought process must be :

    Step 1) State the exact law from the context.
    Step 2) Then explain what it means.
    Step 3) Elaborate how it applies to the client's situation.
    Step 4) Inform what the actions the client needs to take now.

    Don't display output as if you're a bot. Remember, you're a lawyer so structure your responses in a way a lawyer would speak.

    IMPORTANT : Always remember that you are dealing with Indian laws and queries from Indian users, strictly at all times.

    THIS IS HOW YOUR RESPONSE MUST BE, ALWAYS, AT ALL TIMES, AT ANY COST :

    {"message":"","domain":"","laws":{"section":""}}

    USER_QUERY : 
    """
    final_output = refiner.generate_content(f"{refining_prompt}\n{query}\nCONTEXT:\n{response_from_rag}")
    return final_output.text

def get_advice(uq):
    category = gateway(uq)
    extracted_info = extract_info(uq, category)
    try:
        json_extracted_info = json.loads(extracted_info)
        return json_extracted_info
    except Exception as e:
        fixer_prompt = """
        Provided to you will be a string that looks like a JSON dictionary. This dictionary was to be loaded into a Python dictionary using json.dumps() but failed. The error thrown during this process is also given to you. Your main mission is to fix this error by modifying the string's JSON syntax in such a way that json.dumps() won't throw any errors. In other words, fix the incorrect syntax of the JSON within the string, and provide the corrected version as the output.

        GOLDEN RULES :

        1. Apart from the corrected JSON string, DO NOT return anything else, no unnecessary characters, headers, backticks, symbols, escape sequences, texts, etc.
        2. Never ever break Golden Rule Number 1.

        Here's the flawed JSON string :
        """
        fix_model = genai.GenerativeModel("gemini-pro")
        rex = fix_model.generate_content(f"{fixer_prompt}\n{extracted_info}\nHere is the error:\n{e}").text
        return rex

que = """
What are the legal requirements for a workplace to be considered safe?
"""
answer = get_advice(que)
print(answer)
print(type(answer))
# cat = gateway(que)
# print(cat)