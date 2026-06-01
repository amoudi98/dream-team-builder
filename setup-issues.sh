#!/bin/bash

# ============================================================
# Dream Team Builder — GitHub Issues Setup Script
# Run this ONCE after cloning the repo.
# Requires GitHub CLI: https://cli.github.com/
#
# Usage:
#   gh auth login        ← do this first
#   bash setup-issues.sh
# ============================================================

REPO="amoudi98/dream-team-builder"

echo "🚀 Creating all Dream Team Builder tickets on GitHub..."
echo ""

create_issue() {
  local TITLE="$1"
  local BODY="$2"
  local LABEL="$3"
  local MILESTONE="$4"
  gh issue create \
    --repo "$REPO" \
    --title "$TITLE" \
    --body "$BODY" \
    --label "$LABEL" \
    --milestone "$MILESTONE" 2>/dev/null
  echo "✅ Created: $TITLE"
  sleep 0.5
}

# Create labels first
echo "📌 Creating labels..."
gh label create "day-1" --color "FBB800" --description "Day 1 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-2" --color "FBB800" --description "Day 2 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-3" --color "FBB800" --description "Day 3 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-4" --color "FBB800" --description "Day 4 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-5" --color "002B5B" --description "Day 5 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-6" --color "002B5B" --description "Day 6 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-7" --color "002B5B" --description "Day 7 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-8" --color "002B5B" --description "Day 8 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-9" --color "27AE60" --description "Day 9 tasks" --repo "$REPO" 2>/dev/null
gh label create "day-10" --color "C0392B" --description "Day 10 tasks" --repo "$REPO" 2>/dev/null
gh label create "setup" --color "9B59B6" --description "Setup task" --repo "$REPO" 2>/dev/null
gh label create "feature" --color "27AE60" --description "Feature" --repo "$REPO" 2>/dev/null
gh label create "learning" --color "FBB800" --description "Learning task" --repo "$REPO" 2>/dev/null
gh label create "standup" --color "3498DB" --description "Daily standup" --repo "$REPO" 2>/dev/null
echo ""

# ── DAY 1 ──────────────────────────────────────────────────
echo "📅 Day 1 — HTML Basics"
create_issue "DTB-1 Set up developer workspace" \
"Install VS Code and extensions: Prettier, Live Server, ES7+ React/Redux snippets." \
"setup,day-1" ""

create_issue "DTB-2 Create your first HTML file" \
"Create a folder called \`dream-team-builder\` and inside it create \`index.html\`. Make sure it opens in the browser via Live Server." \
"learning,day-1" ""

create_issue "DTB-3 Build Bellingham's player card in HTML" \
"Build a player card for Jude Bellingham showing: name, position (#5 CAM), nationality, and stats (Goals, Assists, Rating). No CSS yet — just structure." \
"feature,day-1" ""

create_issue "DTB-4 First git commit" \
"Initialize a git repo in the project folder and make your first commit with the message: \`feat: add html player card\`" \
"setup,day-1" ""

# ── DAY 2 ──────────────────────────────────────────────────
echo "📅 Day 2 — CSS"
create_issue "DTB-5 Create and link CSS file" \
"Create \`styles.css\` and link it to \`index.html\` using a \`<link>\` tag. Test that changes in CSS update the page." \
"setup,day-2" ""

create_issue "DTB-6 Style the player card with Real Madrid colors" \
"Style the card using Real Madrid colors: White (#FFFFFF), Gold (#FBB800), Navy (#002B5B). Use flexbox for the stats row. Card should be centered on the page." \
"feature,day-2" ""

create_issue "DTB-7 Add hover animation" \
"When hovering over the card, it should lift up slightly using \`transform: translateY()\` with a smooth \`transition\`." \
"feature,day-2" ""

create_issue "DTB-8 Open first Pull Request" \
"Create branch \`day-2/css-player-card\`, commit your CSS work, push it, and open a Pull Request on GitHub. Write a description of what you changed." \
"setup,day-2" ""

# ── DAY 3 ──────────────────────────────────────────────────
echo "📅 Day 3 — JavaScript"
create_issue "DTB-9 Add Show Stats button" \
"Add a button to the player card that will show/hide the stats section. The stats section should be hidden by default." \
"feature,day-3" ""

create_issue "DTB-10 Write toggleStats() function" \
"Create \`script.js\` and write a \`toggleStats()\` function. The button text should change between 'Show Stats ▼' and 'Hide Stats ▲'." \
"feature,day-3" ""

create_issue "DTB-11 Add squad counter (max 11 players)" \
"Add an 'Add to Squad' button. A counter shows how many players are added (e.g. '3 / 11'). Disable the button when 11 is reached. Add a Reset button." \
"feature,day-3" ""

create_issue "DTB-12 Commit and PR — JavaScript work" \
"Branch: \`day-3/javascript-interactivity\`. Commit all JS work and open a PR." \
"setup,day-3" ""

# ── DAY 4 ──────────────────────────────────────────────────
echo "📅 Day 4 — TypeScript"
create_issue "DTB-13 Create Player interface in TypeScript" \
"Create \`player.ts\` with a \`Player\` interface containing: id, name, position, nationality, rating, goals, assists — all properly typed." \
"learning,day-4" ""

create_issue "DTB-14 Create typed Real Madrid player data" \
"Create an array of at least 6 Real Madrid players using your \`Player\` interface. TypeScript should show an error if any field is wrong." \
"feature,day-4" ""

create_issue "DTB-15 Write typed helper functions" \
"Write \`getBestPlayer(players: Player[]): Player\` and \`filterByPosition(players: Player[], position: string): Player[]\` — both with correct TypeScript types." \
"feature,day-4" ""

create_issue "DTB-16 Commit and PR — TypeScript work" \
"Branch: \`day-4/typescript-player-types\`. Commit and open PR." \
"setup,day-4" ""

# ── DAY 5 ──────────────────────────────────────────────────
echo "📅 Day 5 — Angular"
create_issue "DTB-17 Install Angular CLI and create project" \
"Install Angular CLI globally (\`npm install -g @angular/cli\`), create a new project called \`dream-team-builder\` with routing enabled, and make sure it runs at localhost:4200." \
"setup,day-5" ""

create_issue "DTB-18 Understand Angular project structure" \
"Walk through the folder structure with your team lead. Delete the default Angular starter content. Be able to explain what app.component.ts and app.module.ts do." \
"learning,day-5" ""

create_issue "DTB-19 Create PlayerCardComponent" \
"Generate the component with Angular CLI. Build the player card (HTML + CSS) inside it. Pass player data in via \`@Input()\`. Display Bellingham's card from app.component." \
"feature,day-5" ""

create_issue "DTB-20 Commit and PR — Angular component" \
"Branch: \`day-5/angular-components\`. Commit and open PR." \
"setup,day-5" ""

# ── DAY 6 ──────────────────────────────────────────────────
echo "📅 Day 6 — Angular Services & Routing"
create_issue "DTB-21 Create PlayersService" \
"Generate PlayersService with Angular CLI. Move player data into the service. The component should get players FROM the service, not hardcode them." \
"feature,day-6" ""

create_issue "DTB-22 Set up routing — Home and My Team pages" \
"Create two page components: PlayerListComponent (route: /) and MyTeamComponent (route: /my-team). Add navigation links using routerLink." \
"feature,day-6" ""

create_issue "DTB-23 Commit and PR — services and routing" \
"Branch: \`day-6/services-and-routing\`. Commit and open PR." \
"setup,day-6" ""

# ── DAY 7 ──────────────────────────────────────────────────
echo "📅 Day 7 — C# Basics"
create_issue "DTB-24 Create a C# console app" \
"Use \`dotnet new console -n FootballConsole\` to create a new console app. Run it with \`dotnet run\`." \
"setup,day-7" ""

create_issue "DTB-25 Create the Player class in C#" \
"Create \`Player.cs\` with properties: Id, Name, Position, Nationality, Rating, Goals, Assists. Add a \`Describe()\` method that returns a formatted string." \
"learning,day-7" ""

create_issue "DTB-26 Add RM player list and filter methods" \
"Create a list of 8+ Real Madrid players in Program.cs. Write \`GetBestPlayer()\` (highest rating) and \`FilterByPosition()\` methods. Print results to console." \
"feature,day-7" ""

create_issue "DTB-27 Commit and PR — C# basics" \
"Branch: \`day-7/csharp-basics\`. Commit and open PR." \
"setup,day-7" ""

# ── DAY 8 ──────────────────────────────────────────────────
echo "📅 Day 8 — .NET API"
create_issue "DTB-28 Create ASP.NET Core Web API project" \
"Use \`dotnet new webapi -n DreamTeamApi\`. Run it and verify Swagger UI is accessible at /swagger." \
"setup,day-8" ""

create_issue "DTB-29 Create Player model and seed data" \
"Create \`Models/Player.cs\` and a data file with 15+ Real Madrid players covering all positions (GK, DEF, MID, FWD)." \
"feature,day-8" ""

create_issue "DTB-30 Create PlayersController with GET endpoints" \
"Create \`Controllers/PlayersController.cs\`. Implement \`GET /api/players\` (all players) and \`GET /api/players/{id}\` (single player). Both should work in Swagger." \
"feature,day-8" ""

create_issue "DTB-31 Test all endpoints in Swagger and open PR" \
"Test every endpoint in Swagger UI. Confirm correct JSON responses and 404 for missing players. Branch: \`day-8/dotnet-api\`. Open PR." \
"setup,day-8" ""

# ── DAY 9 ──────────────────────────────────────────────────
echo "📅 Day 9 — Full Stack"
create_issue "DTB-32 Enable CORS and connect Angular to .NET" \
"Add CORS policy in Program.cs for localhost:4200. Update Angular's PlayersService to use HttpClient to call \`GET /api/players\`. Player list should come from the real API." \
"setup,day-9" ""

create_issue "DTB-33 Update PlayersService to use HttpClient" \
"Replace hardcoded player data with a real HTTP call to your .NET API. Show a loading state while waiting. Handle errors gracefully." \
"feature,day-9" ""

create_issue "DTB-34 Build Add to My Team feature" \
"'Add to Team' button on each player card. Max 11 players. Cannot add the same player twice. Added players appear on the My Team page." \
"feature,day-9" ""

create_issue "DTB-35 Build Remove Player feature" \
"Add a 'Remove' button on the My Team page. Clicking it removes that player from the squad immediately without refreshing." \
"feature,day-9" ""

create_issue "DTB-36 End-to-end test and final PR" \
"Test the full flow: browse players → add to team → view team → remove player. Both .NET and Angular running. No console errors. Branch: \`day-9/full-stack-dream-team\`." \
"setup,day-9" ""

# ── DAY 10 ──────────────────────────────────────────────────
echo "📅 Day 10 — Polish & Present"
create_issue "DTB-37 Bug fixing — fix all known issues" \
"Go through the app end-to-end. Open DevTools (F12) and fix any red console errors. Test on Chrome and Safari." \
"feature,day-10" ""

create_issue "DTB-38 Final styling improvements" \
"Polish the UI — consistent RM colors, readable player cards, clean My Team page. Color-code positions (GK/DEF/MID/FWD). Make it something you're proud to demo." \
"feature,day-10" ""

create_issue "DTB-39 Prepare 5-minute presentation" \
"Prepare your demo: (1) What is it? (2) Live demo (3) Show one piece of code (4) What you learned (5) What you'd add next. Practice it once before presenting." \
"setup,day-10" ""

create_issue "DTB-40 Present to the team 🏆" \
"Live demo your Dream Team Builder. Show the full flow. Answer questions. Celebrate what you built in 2 weeks!" \
"feature,day-10" ""

echo ""
echo "🎉 All done! $(gh issue list --repo $REPO --limit 100 --json number | python3 -c 'import json,sys; print(len(json.load(sys.stdin)))') issues created."
echo ""
echo "Next steps:"
echo "  1. Go to https://github.com/amoudi98/dream-team-builder"
echo "  2. Click Projects → New project → Board"
echo "  3. Add columns: To Do / In Progress / Done"
echo "  4. Move all issues into 'To Do'"
echo ""
