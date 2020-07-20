require './player'
require './questions'
# @username = gets.chomp.to_s
p1 = Player.new('Player 1')
p2 = Player.new('Player 2')
@turn = rand(1..2)
@active = true #to start the game

puts "Welcome to the Math game!"


while @active
  # create question instance
  question = Question.new


  # determine who goes first and turn order
  if @turn == 1
    puts "#{p1.name} will go:"
  elsif @turn == 2
    puts "#{p2.name} will go:"
  end

  print question.question
  @user_input = gets.chomp.to_i
  # determine if player is loses a life or not
  if @turn == 1 && question.correct?(@user_input)
    puts "✅✅✅Correct!✅✅✅"
    @turn += 1
  elsif @turn == 1 && !question.correct?(@user_input)
    puts "❌❌❌Incorrect❌❌❌"
    p1.lose_life
    @turn += 1
  elsif @turn == 2 && question.correct?(@user_input)
    puts "✅✅✅Correct!✅✅✅"
    @turn -= 1
  elsif @turn == 2 && !question.correct?(@user_input)
    puts "❌❌❌Incorrect❌❌❌"
    p2.lose_life
    @turn -= 1
  end



  if p1.lives < 1 || p2.lives < 1
    if p1.lives < 1
      puts "------ Game Over ------"
      puts "🎊🎉#{p2.name} wins with #{p2.lives} lives remaining!🎊🎉"
    elsif p2.lives < 1
      puts "------ Game Over ------"
      puts "🎊🎉#{p1.name} wins with #{p1.lives} lives remaining!🎊🎉"
    end
    puts "------ Thank you for playing! ------"
    puts "Good Bye!"
    @active = false
  else
    # display current score and next turn
    puts "Current Score:
    #{p1.name}: #{p1.lives} lives remaining
    #{p2.name}: #{p2.lives} lives remaining"
    puts "------ New Turn ------"
  end

end