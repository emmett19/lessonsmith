# LessonSmith

LessonSmith is a tool for ESL teachers to quickly find effective classroom games based on the language they want to teach.

Instead of searching manually or relying on memory, teachers can enter a target sentence or structure (e.g. "Can he swim?") and get game recommendations tailored to that language and desired energy level.

---

## Live Demo

Frontend: https://lessonsmith.vercel.app  
Backend API: https://lessonsmith.onrender.com  
Github: https://github.com/emmett19/lessonsmith  

---

## Problem

ESL teachers often need to quickly choose activities that match a specific grammar point or target language.

In practice, this usually means:
- relying on memory
- flipping through notes
- or choosing suboptimal games that don’t fully match the lesson

This process is slow and inconsistent, especially under time pressure.

---

## Solution

LessonSmith allows teachers to:

- Input target language (e.g. "Where is the ___?")
- Select desired class energy (low / medium / high)
- Instantly receive matching classroom games

Each recommendation is based on:
- pattern matching between input and known game-compatible structures
- energy alignment
- domain filtering (when applicable)

---

## Features

- Target language → game recommendation engine
- Energy-based filtering (low / medium / high)
- Browseable game library with filters:
  - level
  - category
  - energy
  - class size
- Detailed game view with:
  - description
  - how to run instructions
Backend authentication system:
- persisted user accounts (PostgreSQL)
- password hashing with BCrypt
- JWT-based authentication (login → token → protected routes)
- stateless authorization using Spring Security filter chain
- input validation and structured error handling
- Mobile-friendly UI

---

## Architecture

LessonSmith uses a layered backend architecture:

- **Controllers** handle HTTP requests and responses
- **Services** contain business logic (e.g. recommendation scoring, authentication, user management)
- **Repositories** manage database access via JPA
- **Entities** map application data to database tables

---

## Data Layer

LessonSmith currently uses a hybrid data approach:

- **PostgreSQL database**
  - Stores user accounts (email, hashed password, role)
  - Supports persistent backend features like authentication

- **JSON-based game library**
  - Stores structured game data for recommendations
  - Used by the recommendation engine

Browse mode is backed by database-ready structures, with recommendation mode still using JSON for fast iteration.

---

## How It Works

The recommendation system uses a structured scoring pipeline:

1. Regex-based pattern matching identifies compatible games
2. Candidate games are weighted based on pattern strength
3. Energy alignment adjusts final scores
4. Domain-specific rules filter out irrelevant games

The frontend provides two modes:
- **Recommendation mode** (input → results)
- **Browse mode** (filter and explore all games)

---

## Authentication Flow

LessonSmith uses stateless authentication with JWT:

1. Users register with email and password (hashed with BCrypt)
2. On login, the backend validates credentials and returns a signed JWT
3. The client includes the token in the Authorization header
4. A custom Spring Security filter validates the token on each request
5. Protected endpoints are accessible only with a valid token

This approach enables secure, scalable authentication without server-side sessions.

## Tech Stack

**Frontend**
- React
- TypeScript
- Vite
- Deployed on Vercel

**Backend**
- Java
- Spring Boot
- REST API
- Spring Data JPA
- Spring Security (BCrypt password hashing, JWT authentication, protected API routes)
- Deployed on Render

**Database**
- PostgreSQL (hosted via Supabase)

---

## Future Improvements

- User-specific features and role-based authorization
- Frontend authentication flow (token storage + protected UI routes)
- AI-assisted pattern matching (LLM integration)
- User-adjustable recommendation weighting
- Full migration from JSON → database-backed game storage
- Expanded game library and domains

---

## Why I Built This

I built LessonSmith while teaching ESL classes, where choosing the right activity quickly is critical.

This project reflects:
- real classroom constraints
- practical teaching workflows
- a focus on tools that are usable in live environments
- and a growing backend architecture supporting real users

---

## Getting Started (Local)

```bash
# Frontend
cd frontend
npm install
npm run dev

# Backend
cd api
./mvnw spring-boot:run

