// player.ts
interface Player {
  id: number
  name: string
  position: string
  nationality: string
  rating: number
  goals: number
  assists: number
}
const realMadridPlayers: Player[] = [
  { id: 1, name: "Jude Bellingham", 
    position: "CAM", nationality: "England",
    rating: 93, goals: 24, assists: 17 },

  { id: 2, name: "Vinícius Jr.", 
    position: "LW", nationality: "Brazil",
    rating: 90, goals: 28, assists: 18 },

  { id: 3, name: "Kylian Mbappé", 
    position: "ST", nationality: "France",
    rating: 94, goals: 52, assists: 14 },

  { id: 4, name: "Rodrygo", 
    position: "RW", nationality: "Brazil",
    rating: 90, goals: 26, assists: 15 },
 
  { id: 5, name: "Aurelien Tchouameni", 
    position: "CDM", nationality: "France",
    rating: 89, goals: 6, assists: 5 },

  { id: 6, name: "Frederico Valverde", 
    position: "CM", nationality: "Uruguay",
    rating: 91, goals: 15, assists: 13 },
 
  { id: 7, name: "Ferland Mendy", 
    position: "LB", nationality: "France",
    rating: 86, goals: 2, assists: 7 },

  { id: 8, name: "Dean Huijsen", 
    position: "CB", nationality: "Spain",
    rating: 88, goals: 3, assists: 1 },

  { id: 9, name: "Antonio Rüdiger", 
    position: "CB", nationality: "Germany",
    rating: 89, goals: 4, assists: 2 },

  { id: 10, name: "Trent Alexander-Arnold", 
    position: "RB", nationality: "England",
    rating: 90, goals: 5, assists: 16 },

  { id:11, name: "Thibault Courtois", 
    position: "GK", nationality: "Belgium",
    rating: 91, goals: 1, assists: 2 },
  ]