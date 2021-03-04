class Player
  attr_accessor :lives, :number

  def initialize(number)
    @number = number
    @lives = 3
  end

  def lose_a_life
    self.lives -= 1
  end

end

