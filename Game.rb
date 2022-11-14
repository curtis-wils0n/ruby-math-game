require './Turn'
require './Player'

class Game

  attr_reader :p1, :p2, :winner

  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @winner = nil
  end

  def loop
    current_player = p1
    while (not p1.lost?) && (not p2.lost?)
      turn = Turn.new(current_player) # Create new turn with current player
      print turn.ask_question         # Ask randomized question
      answer = gets.chomp.to_i        # Receive user input as integer
      result = turn.correct?(answer)  # Save validation to result
      puts turn.display_result(result)      # Return string based on result
      # Update Player scores
      if not result
        turn.update_score
      end
      puts overall_score
      if p1.lost?
        results(p2)
        break
      elsif p2.lost?
        results(p1)
        break
      else
        current_player = switch_player(current_player)  # Switch to other player
        puts turn.new_turn              # Display "new turn" message
      end
    end
  end

  def switch_player(current_player)
    if current_player == p1
      current_player = p2
    else 
      current_player = p1
    end
  end

  def overall_score
    "P1: #{p1.score}/3 vs P2: #{p2.score}/3"
  end

  def results(winner)
    @winner = winner
  end

  def game_over
    "----- GAME OVER -----"
  end

end
