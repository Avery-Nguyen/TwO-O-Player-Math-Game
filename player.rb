class Player
  

  def initialize (name, lives = 3)
    @name = name
    @lives = lives
  end

  attr_accessor :name, :lives

  def lose_life
    @lives -= 1
  end

  
end