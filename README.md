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
- Mobile-friendly UI

---

## How It Works

The backend uses a structured scoring system:

1. Regex-based pattern matching identifies which games support the input language
2. Candidate games are weighted based on pattern strength
3. Energy alignment adjusts final scores
4. Domain-specific rules filter out irrelevant games

The frontend provides two modes:
- **Recommendation mode** (input → results)
- **Browse mode** (filter and explore all games)

---

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
- Deployed on Render

**Data**
- JSON-based game library
- Pattern definitions for language matching
- Domain mappings

---

## Future Improvements

- AI-assisted pattern matching (LLM integration)
- User-adjustable weighting (e.g. prioritize energy vs accuracy)
- Authentication + saved preferences
- Database integration (replace JSON storage)
- Expanded game library and domains

---

## Why I Built This

I built LessonSmith while teaching ESL classes, where choosing the right activity quickly is critical.

This project reflects:
- real classroom constraints
- practical teaching workflows
- and a focus on tools that are actually usable in live environments

---

## Getting Started (Local)

```bash
# Frontend
cd frontend
npm install
npm run dev

# Backend
cd backend
./mvnw spring-boot:run


