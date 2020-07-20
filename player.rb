class Player
  def initalized (name, lives = 3)
    @name = name
    @lives = lives
  end

  def lose_life
    @lives -= 1
end