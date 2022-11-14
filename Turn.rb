class Turn

  attr_reader :int1, :int2, :current_player

  def initialize(current_player)
    @current_player = current_player
    @int1 = rand(1..20)
    @int2 = rand(1..20)
  end

  def ask_question
    "P#{current_player.id}: What is #{int1} plus #{int2}?\n> "
  end

  def correct?(answer)
    int1 + int2 == answer
  end

  def display_result(result)
    if result
      "Player #{current_player.id}: YES! You are correct"
    else
      "Player #{current_player.id}: Seriously? No!"
    end
  end

  def update_score
    current_player.lose_point
  end

  def new_turn
    "----- NEW TURN -----"
  end

end