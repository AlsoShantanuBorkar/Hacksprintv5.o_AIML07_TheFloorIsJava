from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from contextlib import asynccontextmanager
from api.router import router
from core.config import settings


app = FastAPI(title="LawyerUp")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


app.include_router(router=router)

# if __name__ == "__main__":
#     uvicorn.run(app, host="0.0.0.0", port=8000)
