FROM python:3.12-slim

COPY --from=ghcr.io/astral-sh/uv:0.12.10 /uv /uvx /bin/

WORKDIR /app

COPY pyproject.toml uv.lock ./
RUN uv sync --locked --no-dev --no-install-project

COPY README.md ./
COPY src ./src
RUN uv sync --locked --no-dev

CMD ["uv", "run", "--no-sync", "uvicorn", "job_tracker_api.main:app", "--host", "0.0.0.0", "--port", "8000"]