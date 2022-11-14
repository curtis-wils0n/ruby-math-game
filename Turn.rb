class Turn
  RAND_MIN = 1
  RAND_MAX = 20

  def initialize(current_player)
    @current_player = current_player
    @int1 = rand(RAND_MIN..RAND_MAX)
    @int2 = rand(RAND_MIN..RAND_MAX)
  end

  def ask_question
    "P#{@current_player.id}: What is #{@int1} plus #{@int2}?\n> "
  end

  def correct?(answer)
    @int1 + @int2 == answer
  end

  def display_result(result)
    if result
      "Player #{@current_player.id}: YES! You are correct"
    else
      "Player #{@current_player.id}: Seriously? No!"
    end
  end

  def new_turn
    "----- NEW TURN -----"
  end

end