from io import BytesIO
from fastapi import APIRouter, File, UploadFile
from ai.conversation import ask_the_law
from ai.image_extraction import summarize_image
from PIL import Image
from core.models.chat_models import QueryAPI

router = APIRouter()


@router.get("/health_check")
def health_check():
    return {"message": "Hello World"}


@router.get("/")
async def home():
    return {"message": "hello"}


@router.post("/generate_response")
async def generate_response(query: QueryAPI):
    if query.imageText == "":
        ans = ask_the_law(uq=query.query, history=query.history)
        return ans
    else:
        user_query = query.query + "\n" + query.imageText
        print("here")
        ans = ask_the_law(uq=user_query, history=query.history)
        return ans


@router.post("/upload")
def upload(file: UploadFile = File(...)):
    try:
        contents = file.file.read()

        globalImage = Image.open(BytesIO(contents))
        imageText = (
            "These are the details extracted from the image provided by the user\n"
            + summarize_image(globalImage)
        )

        return {"message": imageText}

    except Exception:
        return {"message": "error"}
    finally:
        file.file.close()
