# ⚽ Dream Team Builder

> A full-stack web application built during a 2-week developer internship.

Pick your Real Madrid starting 11, save your dream squad, and see how it stacks up.
Built with **Angular** (frontend) + **ASP.NET Core** (backend) + **C#**.

---

## 👨‍💻 Developer

**Intern:** Mahdi
**Duration:** 2 weeks
**Company:** Nullam / Tahaluf Al Emarat Technical Solutions

---

## 🏗️ Tech Stack

| Layer | Technology |
|-------|-----------|
| Frontend | Angular + TypeScript |
| Backend | ASP.NET Core (.NET) |
| Language | C# |
| Styling | CSS (Real Madrid theme) |
| Version Control | Git + GitHub |

---

## 📁 Project Structure

```
dream-team-builder/
├── frontend/          ← Angular app
│   ├── src/
│   │   ├── app/
│   │   │   ├── components/    ← player-card, etc.
│   │   │   ├── pages/         ← player-list, my-team
│   │   │   ├── services/      ← players.service.ts
│   │   │   └── models/        ← player.model.ts
│   └── ...
├── backend/           ← ASP.NET Core API
│   ├── Controllers/   ← PlayersController.cs
│   ├── Models/        ← Player.cs
│   ├── Data/          ← Seed data
│   └── ...
└── README.md
```

---

## 🚀 Getting Started

### Run the Backend (.NET API)
```bash
cd backend
dotnet restore
dotnet run
# API runs at https://localhost:5001
# Swagger UI at https://localhost:5001/swagger
```

### Run the Frontend (Angular)
```bash
cd frontend
npm install
ng serve
# App runs at http://localhost:4200
```

---

## 🔀 Git Workflow

Every feature is developed on its own branch and merged via Pull Request:

```
main (protected — never commit directly)
  └── day-1/html-player-card
  └── day-2/css-player-card
  └── day-3/javascript-interactivity
  └── day-4/typescript-player-types
  └── day-5/angular-components
  └── day-6/services-and-routing
  └── day-7/csharp-basics
  └── day-8/dotnet-api
  └── day-9/full-stack-dream-team
  └── day-10/polish-and-final
```

---

## ✅ Features

- [x] Browse Real Madrid players
- [x] Player cards with stats
- [x] Add players to My Team (max 11)
- [x] View your dream squad
- [x] Remove players from team
- [ ] Formation display (bonus)
- [ ] Player ratings filter (bonus)

---

## 📅 Build Log

| Day | Topic | Status |
|-----|-------|--------|
| 1 | HTML basics — player card | ✅ |
| 2 | CSS — Real Madrid styling | ✅ |
| 3 | JavaScript — interactivity | ✅ |
| 4 | TypeScript — types & interfaces | ✅ |
| 5 | Angular — components | ✅ |
| 6 | Angular — services & routing | ✅ |
| 7 | C# basics | ✅ |
| 8 | .NET REST API | ✅ |
| 9 | Full stack connection | ✅ |
| 10 | Polish & presentation | ✅ |

---

*Built with ⚽ and a lot of Real Madrid energy.*
