import requests
import google.generativeai as genai
from ai.main_ai import get_advice
from core.config import settings

genai.configure(api_key=settings.GEMINI_API_KEY)
gwmodel = genai.GenerativeModel("gemini-pro")
chat_model = genai.GenerativeModel(
    "gemini-pro", generation_config=genai.GenerationConfig(temperature=0.6)
)

gwprompt = """
You are an expert of gauging the intent of user's queries. Your task is to categorize the user's query into one of the two categories :

1. general_query : Queries that can directly answered by an LLM, without any external / specific knowledge about Indian Laws. Such type of queries usually either are greetings, or general follow-up questions in any conversation.
Eg) "Hello", "Who are you", "I don't understand", "Can you simplify", "Summarize it for me", "Explain it to me like I'm five", "how does it apply to my situation", etc.
If the user's query sounds as if they're asking a follow-up question to a chatbot's response, then it's a general_query. For instance, they may directly address the chatbot as "you", in their query.
Eg) "and what should I do then?", "ok but how does it apply to my situation", etc.

2. api_query : Queries that cannot directly be answered by an LLm without a specific external knowledge base about Indian Laws. Such type of queries are usually specific situations that the user is going through, or queries that explicitly ask for legal advice.
Eg) "... What should I do?", "I don't know what to do now", "What laws apply to my situation?", "Can you help me solve my problem?", "Do you have any legal advice for this?", etc.
If the user's query sounds as if they are asking something that can be better answered by referring to the exact laws themselves, then it's an api_query. Usually, the user's query won't sound like it's a follow-up question in cases of an api_query.

You must read the user query, and precisely categorize accordingly by understanding their intent. Your response must JUST be the category itself, and nothing else :

"general_query" or "api_query"

DO NOT OUTPUT ANYTHING OTHER THAN THE CATEGORY.

USER_QUERY:
"""

chatbot_prompt = """
Your name is LawyerUP. You're a friendly lawyer, and your job is to converse with the user based on their query and the chat history that is provided to you. At no point should the user feel as if they are talking to a chatbot, rather they should feel as if they're talking to a human.
Tend to the user's queries well, understand them, refer to the chat history, and respond accordingly. Sometimes the chat history can be empty, but you should still be able to respond to the user's query nonetheless.

GOLDEN RULES :

1. Do not let the user think that you are a chatbot. You must strictly act like a human lawyer, at all times, at all costs.
2. Never ever break Rule 1.

USER_QUERY :
"""


def gateway(user_query):
    category = gwmodel.generate_content(f"{gwprompt}\n{user_query}").text
    print(category)
    return category


def ask_the_law(uq, history):
    category = gateway(uq)
    if category == "general_query":
        general_response = chat_model.generate_content(
            f"{chatbot_prompt}\n{uq}\nCHAT_HISTORY:\n{history}"
        ).text
        response_structure = {
            "message": general_response,
            "domain": "",
            "laws": {"section": "", "name": "", "description": ""},
            "links": [],
        }
        return response_structure
    elif category == "api_query":
        api_response = get_advice(uq)
        return api_response


latest_question = (
    "I paid for a service that was never provided. How can I get my money back?"
)
api_response = """
Certainly, you can get your money back since you have paid for a service that was unfortunately never provided to you. The Consumer Protection Act, 1986, Section 12 provides you with this right. As per this law, you are legally entitled to a refund of the amount paid, along with interest and compensation for any loss or damage suffered. The first step you need to take is to send a legal notice to the service provider, demanding a refund within a specific time frame. If they fail to respond or refund you within that time, you can file a consumer complaint before the District Consumer Disputes Redressal Commission or the State Consumer Disputes Redressal Commission. You can approach these commissions yourself or through an advocate. The commission will then hear both sides of the case and pass an order. If the order is in your favor, the service provider will be legally bound to refund your money along with interest and compensation, as deemed appropriate by the commission.
"""
new_question = "this is too lengthy, summarize it for me in under 3 sentences."
history = [
    {"user": "Hello", "assistant": "Hi there! How can I help you today?"},
    {
        "user": "Who are you?",
        "assistant": "I'm LawyerUP, a conversational AI chatbot designed to assist you with legal-related queries. Think of me as your friendly legal companion here to help you navigate the complexities of the law.",
    },
    {
        "user": latest_question,
        "assistant": api_response,  # store only the "message" key value in the history, ignore other keys.
    },
]
# answer = ask_the_law(
#     new_question, history
# )  # no matter what the category of the prompt, the structure of the response will always be the same dictionary with the same keys.
# print(answer)

# Suggestion - We can make "ask_the_law" function return the category of the prompt as well, which can then further be used to make changes in the UI. Basically, if the category of the prompt is "general_query", then the chat bubble need not have the "info" and "yt links" buttons. However, when the category is indeed "api_query", then the chat bubble must have those buttons. Since the JSON structure of the output stays consistent no matter the prompt category, this can make the parsing on frontend easier.
