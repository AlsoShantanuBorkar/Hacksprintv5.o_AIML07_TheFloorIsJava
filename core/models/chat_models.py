from pydantic import BaseModel
from typing import List


class ChatHistory(BaseModel):
    user: str
    assistant: str


class QueryAPI(BaseModel):
    query: str
    history: List[ChatHistory] | None = None
    imageText: str | None = None
