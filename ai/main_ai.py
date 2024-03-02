import json
from dotenv import load_dotenv
from PyPDF2 import PdfReader
from langchain.text_splitter import RecursiveCharacterTextSplitter
import os
from langchain_google_genai import GoogleGenerativeAIEmbeddings, ChatGoogleGenerativeAI
import google.generativeai as genai
from google.generativeai.types import GenerationConfig
from langchain_community.vectorstores import FAISS
from langchain.chains.question_answering import load_qa_chain
from langchain.prompts import PromptTemplate
import urllib.request
import re
from core.config import settings

genai.configure(api_key=settings.GEMINI_API_KEY)

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
    Given to you is a corpus and a question. Your job is understand the user's question, and figure out what Indian Law applies to their situation. Usually, this can be found in the given corpus, and you can use it to provide an accurate helpful response that aims to solve the user's problem. However, sometimes the Corpus does not contain relevant context. In such cases, use your own knowledge base to solve the user's problem by providing the precise relevant Indian law and its section(s). 

    Your output must consist of these components :

    Situation of the user problem (summarised), Exact Law (with section name and number), Description (content of that specific law that immediately follows after the section name)

    Corpus:\n{context}\n
    Question: \n{question}\n

    If the Corpus doesn't have sufficient context relevant to the user's query, you must refer to your own knowledge base in order to come up with the three components as mentioned above. However, make sure that they are precise. You must not provide fake information. Most importantly, you MUST stick to Indian laws, and not international laws.

    Answer:
    """
    model = ChatGoogleGenerativeAI(model="gemini-pro", temperature=0.1, google_api_key=settings.GEMINI_API_KEY)
    # model = genai.GenerativeModel("gemini-pro", generation_config=GenerationConfig(temperature=0.1))
    prompt = PromptTemplate(template=prompt_template,
                            input_variables=["context", "question"])
    # model = genai.GenerativeModel("gemini-pro")
    chain = load_qa_chain(model, chain_type="stuff", prompt=prompt)
    return chain

def get_yt_links(query, context):
    searcher_model = genai.GenerativeModel("gemini-pro")
    searcher_prompt = """
    Given to you will be a user's query as well as the chatbot's response in the format of a dictionary (referred to as CONTEXT). These are the total data points provided to you:

    1. Query - This is the user's query
    2. "message" - This is the chatbot's response to the user's query
    3. "domain" - This is the domain of law 
    4. "laws" - This contains details about the law(s) relevant to the user's query

    Based on these data points, you have to come up with a search term to find relevant videos on youtube that the user can watch. Your output must ONLY be the search term, and nothing else. This search term MUST NOT exceed a maximum of 6-7 words, it must STRICTLY be one single sentence.

    GOLDEN RULES TO FOLOW :

    1. YOUR OUTPUT MUST BE A SINGLE STRING, NOT ANY OTHER FORMAT.
    2. Never ever violate the first rule.
    3. Your output MUST always be in English language, and not any other script.

    USER QUERY :
    """
    urls = []
    search_terms = searcher_model.generate_content(f"{searcher_prompt}\n{query}\nCONTEXT:\n{context}").text
    print(search_terms)
    to_search = search_terms.replace(" ", "+")
    html = urllib.request.urlopen(f"https://www.youtube.com/results?search_query={to_search}")
    vid_urls = set(re.findall(r"watch\?v=(\S{11})", html.read().decode()))
    iterable_vid_urls = list(vid_urls)
    print(iterable_vid_urls[:5])
    for i in range(len(iterable_vid_urls[:5])):
        current = f"https://www.youtube.com/watch?v={iterable_vid_urls[i]}"
        urls.append(current)
    links = {"links": urls}
    return links

def extract_info(query, category):
    embeddings = GoogleGenerativeAIEmbeddings(model="models/embedding-001", google_api_key=settings.GEMINI_API_KEY)
    new_db = FAISS.load_local(f"ai/vectorstore/{category}", embeddings)
    docs = new_db.similarity_search(query)
    chain = get_conversational_chain()
    try:
        response = chain(
            {"input_documents":docs, "question":query},
            return_only_outputs=True
        )
    except Exception as e:
        faux_rag_prompt = """
        You have a vast and dense knowledge about Laws of various domains in India, especially these four domains :

        1. criminal law
        2. family law
        3. labour law
        4. property law

        Given the user's query and their domain, your main mission is to understand their issue, and think about what indian laws are relevant to their scenario. Provide them with these three components, as your final output :

        Situation of the user problem (summarised), Exact Law (with section name and number), Description (content of that specific law that immediately follows after the section name)
    
        Here is the user's query :
        """
        rag_model = genai.GenerativeModel("gemini-pro", generation_config=GenerationConfig(temperature=0.1))
        ragres = rag_model.generate_content(f"{faux_rag_prompt}\n{query}\nHere's the Domain:\n{category}")
        try:
            ragres_txt = ragres.text
        except Exception as f:
            ragres_txt = []
            for i in range(len(ragres.candidates)):
                ragres_txt.append(ragres.candidates[i].content.parts)
            print(f"THIS IS THE PARTS THING:\n{ragres_txt}")
        response = {"output_text":ragres_txt}
    response_from_rag = response["output_text"]
    print(response_from_rag)
    # return response_from_rag
    refiner = genai.GenerativeModel("gemini-pro")
    refining_prompt = """
    You're the best lawyer in the India. Your number 1 priority is to help, serve and cater to your client's needs in the best way possible. REMEMBER that the client may not be aware of all the legal jargon, and it is your job to be verbose and clarify it all in an easy to understand manner. You will be provided some context from the current laws along with the client's query. Your mission is to return aappropriate response for their query. Remember, be verbose and friendly about it.

    These are the 4 details that will be provided to you :

    - Situation (you will always be provided this)
    - Exact Law (you will always be provided this)
    - Description (you will always be provided this)
    - Extracted details from the user's image (you will sometimes be provided this, not always)

    This is how your thought process must be :

    1. Relevant Law (State the exact law from the context.)
    2. Explanation (Then explain what it means.)
    3. Application (Elaborate how it applies to the client's situation.)
    4. Actions (Inform what the actions the client needs to take now, in detail, step by step)

    Don't display output as if you're a bot. Remember, you're a lawyer so structure your responses in a way a lawyer would speak.

    IMPORTANT : Always remember that you are dealing with Indian laws and queries from Indian users, strictly at all times.

    THIS IS HOW YOUR RESPONSE MUST BE, ALWAYS, AT ALL TIMES, AT ANY COST :

    {"message":"","domain":"","laws":{"section":"","name":"section heading or name", "description":"exact provided Description"}}

    For the "message" key, you have to apply the 4-step thought process as mentioned above. In case there are also image details, you have to accommodate for the same, and generate appropriate value for this key.

    In case none of the 4 details are provided to you, you have to come up with those details based on the query and the domain itself, using your own knowledge base. Remember, however, do not ever return fake information. Most importantly, the information that you come up with should only concern Indian jurisdiction.

    USER_QUERY : 
    """
    final_output = refiner.generate_content(f"{refining_prompt}\n{query}\nCONTEXT:\n{response_from_rag}\nDOMAIN:\n{category}")
    return final_output.text

def get_advice(uq):
    category = gateway(uq)
    print(category)
    extracted_info = extract_info(uq, category)
    # print(extracted_info)
    try:
        json_extracted_info = json.loads(extracted_info)
        # urls = get_yt_links(uq, extracted_info)
        # json_extracted_info.update(urls)
        json_output = json_extracted_info
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
        print(rex)
        json_rex = json.loads(rex)
        # urls2 = get_yt_links(uq, rex)
        # json_rex.update(urls2)
        json_output = json_rex

    urls = get_yt_links(uq, extracted_info)
    json_output.update(urls)
    return json_output
