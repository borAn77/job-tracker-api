# PROGRESS

Single source of truth for where the project is.

**Current phase:** 0 — Setup (planned 20–22 Oct, started 25 Oct, ~3 days behind)
**Next task:** Fix repo layout

Core if time runs short: Phases 0–6 + 10. Cut 11, then 9, then trim 8.

---

## Phase 0 — Setup (20–22 Oct)

Done when: fresh clone + `docker compose up` → `/health` returns ok

- [X] Fix repo layout (repo root holds `CLAUDE.md`, `PROGRESS.md`, code — no nested folder)
- [X] Branch `phase-00-setup` created
- [X] `uv` project initialised, pinned to Python 3.12
- [X] Dependencies added: FastAPI, Uvicorn (runtime); pytest, httpx, ruff (dev)
- [ ] App package with a `GET /health` route
- [ ] Runs locally with Uvicorn; `/health` returns ok; `/docs` loads
- [ ] Settings read from environment (pydantic-settings) + `.env.example` committed, `.env` ignored
- [ ] `Dockerfile` for the API
- [ ] `docker-compose.yml` with `api` + `db` (PostgreSQL)
- [ ] `ruff check` passes
- [ ] Fresh clone in a new folder → `docker compose up` → `/health` ok
- [ ] PR merged to `main`, tagged `phase-00`

## Phase 1 — Data model and migrations (23–28 Oct)

Done when: `alembic downgrade base` then `upgrade head` works on a clean DB

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-01`

## Phase 2 — Authentication (29 Oct – 4 Nov)

Done when: all `/applications` routes need a token; user A gets 404 on user B's data

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-02`

## Phase 3 — CRUD and query depth (5–11 Nov)

Done when: `LEARNINGS.md` has before/after query counts and timings (N+1 fix, index)

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-03`

## Phase 4 — Testing (12–18 Nov)

Done when: `pytest` green in under a minute; removing a `user_id` filter makes a test fail

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-04`

## Phase 5 — CI pipeline (19–22 Nov)

Done when: a PR with a failing test can't be merged

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-05`

## Phase 6 — AI feature (23 Nov – 2 Dec)

Done when: Analyze works end to end; tests pass with no API key set

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-06`

## Phase 7 — Background jobs (3–9 Dec)

Done when: kill the worker mid-job, restart, job ends `done` or `failed`, never stuck

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-07`

## Phase 8 — Caching and rate limiting (10–13 Dec)

Done when: cache hit in logs; 21st call in an hour gets 429; app survives Redis down

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-08`

## Phase 9 — Security pass (14–16 Dec)

Done when: OWASP Top 10 notes written; `pip-audit` runs on every PR

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-09`

## Phase 10 — Deployment (17–23 Dec)

Done when: a merge to `main` goes live on HTTPS without touching the server

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-10`

## Phase 11 — Observability (24–27 Dec)

Done when: one request ID traces a failure from API log → worker log → Sentry

- [ ] Done-when check passed
- [ ] PR merged, tagged `phase-11`

## Phase 12 — Polish (28–31 Dec)

Done when: README, demo video, repo pinned, CV updated

- [ ] Done-when check passed
- [ ] Tagged `phase-12`
