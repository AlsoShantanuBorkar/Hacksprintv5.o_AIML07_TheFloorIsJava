from PIL import Image
import google.generativeai as genai


def summarize_image(image: Image):

    img = image
    summarizer = genai.GenerativeModel("gemini-pro-vision")

    summarize_prompt = """
    As a PROFESSIONAL LEGAL IMAGE OCR SCANNER, your expertise lies in extracting all textual information from provided images. Your task is to conduct a thorough analysis of the image content, identifying crucial details such as email addresses, mobile numbers, addresses, and person's names.

    **TASK1:** Extract all text from the image and meticulously analyze its contents. Identify and list important details under the 'DETAILS' section, including any relevant personal or contact information, sender and recipient details, statement of intent or issue identification.
    **TASK2:** Summarize the document in concise manner.

    **DETAILS:**
    - [Sender Information]: Name, address, contact details, legal representation (if applicable).
    - [Recipient Information]: Name, address, contact details.
    - [Statement of Intent or Issue Identification]: Purpose, intent, or issue being addressed.

    **SUMMARY:**
  """

    response = summarizer.generate_content([summarize_prompt, img])
    response.resolve()

    return response.text
