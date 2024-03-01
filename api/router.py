from fastapi import APIRouter, File, UploadFile
from pydantic import BaseModel
from ai.main_ai import get_advice

router = APIRouter()


class QueryAPI(BaseModel):
    query: str


@router.get("/")
async def home():
    return {"message": "Hello World"}


@router.post("/generate_response")
async def generate_response(query: QueryAPI):
    print(query.query)
    ans = get_advice(query=query.query)

    return {"type": "GENERAL_PROMPT", "output": ans}


@router.post("/upload")
def upload(file: UploadFile = File(...)):
    try:
        contents = file.file.read()
        with open(file.filename, "wb") as f:
            f.write(contents)
    except Exception:
        return {"message": "There was an error uploading the file"}
    finally:
        file.file.close()

    return {"message": f"Successfully uploaded {file.filename}"}
