Classes:
  -player
    -name (r/w)
    -# of lives (r/w)
  -question
    - generate questions
    - sends true or false based off of player's answer

game:
tracks players turn
compares response from player to question class
sends response to player based off of question class
subtracts life from player class if answer is wrong