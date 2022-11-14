require './Game'

game = Game.new
game.loop
puts "Player #{game.winner.id} wins with a score of #{game.winner.score}/3"
puts game.game_over