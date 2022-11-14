require './Turn'
require './Player'

class Game

  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @current_player = @p1
    @winner = nil
  end

  def loop
    while (not @p1.lost?) && (not @p2.lost?)
      turn = Turn.new(@current_player)
      print turn.ask_question
      answer = gets.chomp.to_i
      result = turn.correct?(answer)  # validate response
      puts turn.display_result(result)
      # Update Player scores
      if not result
        @current_player.lose_point
      end
      puts overall_score
      # Check if player's score has hit zero
      if @p1.lost?
        @winner = @p2
        break
      elsif @p2.lost?
        @winner = @p1
        break
      else
        switch_player
        puts turn.new_turn
      end
    end
  end

  def switch_player
    case @current_player
    when @p1
      @current_player = @p2
    when @p2
      @current_player = @p1
    end
  end

  def overall_score
    "P1: #{@p1.score}/3 vs P2: #{@p2.score}/3"
  end

  def end_game
    "Player #{@winner.id} wins with a score of #{@winner.score}/3\n----- GAME OVER -----"
  end

end
