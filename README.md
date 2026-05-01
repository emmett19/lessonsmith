# LessonSmith

LessonSmith is a full-stack ESL classroom game recommendation app that helps teachers quickly find activities that match the language they want to teach.

Instead of searching through notes or relying on memory, teachers can enter a target sentence or structure — for example, `"Can he swim?"` — and receive classroom game recommendations tailored to that language, class context, and desired energy level.

---

## Live Demo

Frontend: https://lessonsmith.vercel.app  
Backend API: https://lessonsmith.onrender.com  
GitHub: https://github.com/emmett19/lessonsmith  

---

## Problem

ESL teachers often need to choose activities quickly while planning lessons or teaching live classes.

In practice, this usually means:

- relying on memory
- searching through old notes
- adapting games on the fly
- choosing activities that may not fully match the target language

This process can be slow and inconsistent, especially under time pressure.

---

## Solution

LessonSmith helps teachers match target language to classroom-ready games.

Teachers can:

- enter a target sentence or structure
- select a desired energy level
- receive recommended games with explanations
- browse and filter the full game library
- create an account and save useful games for later

Recommendations are based on:

- regex-based language pattern matching
- weighted scoring rules
- energy alignment
- domain/category filtering

---

## Features

### Recommendation Engine

- Target language → classroom game recommendations
- Regex-based matching for common ESL sentence structures
- Weighted scoring system for ranking compatible games
- Energy-level adjustment: low / medium / high
- Recommendation reasoning shown to the user

### Game Library

- Browseable collection of ESL classroom games
- Filters for:
  - level
  - category
  - energy
  - class size
- Detailed game cards with:
  - description
  - best use case
  - energy explanation
  - language explanation
  - step-by-step instructions

### Authentication & Saved Games

- User registration and login
- BCrypt password hashing
- JWT-based stateless authentication
- Protected API routes using Spring Security
- Ability for logged-in users to save and remove games
- Persistent saved games backed by PostgreSQL

### UI

- React + TypeScript frontend
- Recommendation mode and browse mode
- Mobile-friendly layout
- Clear feedback for authentication and save actions

---

## Tech Stack

### Frontend

- React
- TypeScript
- Vite
- Deployed on Vercel

### Backend

- Java
- Spring Boot
- REST API
- Spring Security
- Spring Data JPA / Hibernate
- JWT authentication
- BCrypt password hashing
- Deployed on Render

### Database

- PostgreSQL
- Hosted via Supabase

---

## Architecture

LessonSmith uses a layered backend architecture:

- **Controllers** handle HTTP requests and responses
- **Services** contain business logic, including recommendation scoring and authentication
- **Repositories** manage database access through Spring Data JPA
- **Entities** map users, games, and saved-game relationships to database tables
- **Security filters** validate JWTs and protect authenticated routes

The frontend communicates with the backend through typed service functions and REST API calls.

---

## Data Layer

LessonSmith currently uses a hybrid data approach:

- **PostgreSQL**
  - Stores user accounts
  - Stores saved games
  - Supports persistent authenticated user features

- **Structured game data**
  - Powers the game library and recommendation engine
  - Designed for migration into a fully database-backed model

This hybrid approach allowed fast iteration on recommendation logic while adding production-style persistence for user-specific features.

---

## How Recommendations Work

The recommendation system uses a scoring pipeline:

1. The teacher enters target language, such as `"Where is the pencil?"`
2. Regex patterns identify compatible language structures
3. Matching games receive weighted scores based on pattern strength
4. Energy preference adjusts the score
5. Domain and category rules help filter irrelevant results
6. The frontend displays ranked recommendations with reasoning

LessonSmith currently supports two main modes:

- **Recommendation Mode** — enter language and receive matched games
- **Browse Mode** — explore and filter the full game library

---

## Authentication Flow

LessonSmith uses stateless JWT authentication:

1. A user registers with an email and password
2. The backend hashes the password with BCrypt
3. On login, the backend validates credentials and returns a signed JWT
4. The frontend stores the token and sends it in the `Authorization` header
5. A custom Spring Security filter validates the token on protected requests
6. Authenticated users can save and remove games

This keeps authentication scalable without relying on server-side sessions.

---

## API Overview

### Public Routes

- `GET /api/games/all`
  - Returns the full game library

- `POST /api/recommend`
  - Returns ranked game recommendations based on target language and energy level

- `POST /api/auth/register`
  - Creates a new user account

- `POST /api/auth/login`
  - Authenticates a user and returns a JWT

### Protected Routes

- `GET /api/saved-games`
  - Returns the logged-in user's saved games

- `POST /api/saved-games/{gameId}`
  - Saves a game for the logged-in user

- `DELETE /api/saved-games/{gameId}`
  - Removes a saved game for the logged-in user

---

## Why I Built This

I built LessonSmith from my experience teaching ESL, where choosing the right classroom activity quickly can make a big difference.

The app is based on real classroom constraints:

- teachers often plan under time pressure
- target language needs to match the activity mechanics
- high-energy and low-energy games serve different classroom needs
- reusable classroom routines are often more valuable than one-off activities

LessonSmith turns that teaching workflow into a full-stack software product.

---

## Future Improvements

- Full migration of game data into PostgreSQL
- More advanced saved-game organization
- User-specific recommendation preferences
- Role-based authorization
- AI-assisted pattern matching with LLM integration
- Expanded game library
- Admin tools for adding and editing games
- Improved frontend auth UX and protected UI states

---

## Getting Started Locally

### Frontend

```bash
cd lesson-smith-frontend
npm install
npm run dev


# Backend
cd api
./mvnw spring-boot:run

## Environment Variables

The frontend expects:

VITE_API_BASE_URL=http://localhost:8080

The backend expects database and JWT configuration values, including:

DATABASE_URL=your_postgres_url
JWT_SECRET=your_jwt_secret

---

## Project Status

LessonSmith is actively being developed.

Current completed milestones include:

- Game recommendation engine
- Browseable game library
- Deployed frontend and backend
- PostgreSQL integration
- User registration and login
- JWT authentication
- Protected saved-games feature

