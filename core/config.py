from pydantic_settings import BaseSettings
from dotenv import load_dotenv, dotenv_values, find_dotenv


env = find_dotenv()
env_values = dotenv_values(env)


class Settings(BaseSettings):

    DATABASE_URL: str = env_values["DATABASE_URL"]
    ACCESS_TOKEN_EXPIRES_IN_MINUTES: int = env_values["ACCESS_TOKEN_EXPIRES_IN"]
    REFRESH_TOKEN_EXPIRES_IN_MINUTES: int = env_values["REFRESH_TOKEN_EXPIRES_IN"]
    JWT_ALGORITHM: str = env_values["JWT_ALGORITHM"]
    JWT_PRIVATE_KEY: str = env_values["JWT_PRIVATE_KEY"]
    GOOGLE_API_KEY: str = env_values["GOOGLE_API_KEY"]
    GEMINI_API_KEY: str = env_values["GEMINI_API_KEY"]
    PINECONE_API_KEY: str = env_values["PINECONE_API_KEY"]

    class Config:
        case_sensitive = True


settings = Settings()


print("FROM ENV")
print(settings.GEMINI_API_KEY)
