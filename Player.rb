class Player

  attr_reader :id
  attr_accessor :score

  def initialize(id)
    @id = id
    @score = 3
  end

  def lost?
    @score < 1
  end

  def lose_point
    @score = @score - 1
  end

end