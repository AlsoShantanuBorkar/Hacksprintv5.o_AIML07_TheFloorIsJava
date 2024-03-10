from io import BytesIO
from fastapi import APIRouter, File, UploadFile
from pydantic import BaseModel
from ai.image_extraction import summarize_image
from ai.main_ai import get_advice
from PIL import Image

router = APIRouter()


class QueryAPI(BaseModel):
    query: str


globalImage: Image = None
imageText: str = None


@router.get("/reset_server")
def reset_server():
    global globalImage, imageText
    globalImage = None
    imageText = None


@router.get("/health_check")
def health_check():
    return {"message": "Hello World"}


@router.get("/")
async def home():
    return {"message": "hello"}


@router.post("/generate_response")
async def generate_response(query: QueryAPI):
    print(query.query)
    if imageText is None:
        ans = get_advice(uq=query.query)
        return ans
    else:
        user_query = query.query + "\n" + imageText
        ans = get_advice(uq=user_query)
        return ans


@router.post("/upload")
def upload(file: UploadFile = File(...)):
    try:
        contents = file.file.read()
        global globalImage
        global imageText

        globalImage = Image.open(BytesIO(contents))
        imageText = (
            "These are the details extracted from the image provided by the user\n"
            + summarize_image(globalImage)
        )

    except Exception:
        return {"message": "error"}
    finally:
        file.file.close()

    return {"message": f"success"}
