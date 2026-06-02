// script.js
function toggleStats() {
  const statsSection = document.getElementById('stats-section')
  const button = document.getElementById('stats-btn')

  if (statsSection.style.display === 'none') {
    statsSection.style.display = 'flex'
    button.textContent = 'Hide Stats ▲'
  } else {
    statsSection.style.display = 'none'
    button.textContent = 'Show Stats ▼'
  }
}
let squadCount = 0
const MAX_PLAYERS = 11

function addToSquad() {
  if (squadCount < MAX_PLAYERS) {
    squadCount++
    document.getElementById('count').textContent = 
      squadCount + ' / ' + MAX_PLAYERS
  }
  if (squadCount === MAX_PLAYERS) {
    document.getElementById('add-btn').disabled = true
    document.getElementById('add-btn').textContent = 
      '✅ Squad Full!'
  }
}

function resetSquad() {
  squadCount = 0
  document.getElementById('count').textContent = 
    squadCount + ' / ' + MAX_PLAYERS
  document.getElementById('add-btn').disabled = false
  document.getElementById('add-btn').textContent = 
    'Add to Squad'
}