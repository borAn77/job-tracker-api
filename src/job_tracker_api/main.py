from contextlib import asynccontextmanager

from fastapi import FastAPI

from .config import get_settings


@asynccontextmanager
async def lifespan(app: FastAPI):
    get_settings()
    yield


app = FastAPI(lifespan=lifespan)


@app.get("/health")
async def check_health():
    return {"status": "ok"}
