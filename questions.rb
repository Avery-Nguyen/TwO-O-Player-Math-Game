class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def question
    "What is #{@num1} + #{@num2} = ??  "
  end

  def correct?(input)
    @answer = @num1 + @num2
    if input == @answer
      return true
    else
      return false
    end
  end

end