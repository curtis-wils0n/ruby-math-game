# Game is its own class to facilitate replay (not implemented)
require './Game'

game = Game.new
game.loop
puts game.end_game