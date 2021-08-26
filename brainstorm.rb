# Game Loop: 
  # Game starts
  # Question is asked 
  # User enteres an input
  # Score is tallied and shown
  # The loop repeats until end condition is met
  # Once loop is completed, win message is shown
  # Game ends

# Create a method that randomly generates two numbers, and check for the sum matches

# for each question, call player answer method for current_player (gets.chomp for input)

# check if inputted answer matches question bank's answer
  # if wrong, subtract a score from that player and show losing message
  # if right, score stays the same and winning message is shown

# check if the game over conditions are met (eg. one players loses all lives)
  # if one player loses all of their lives
    # then display winning player's score
    # and end the game

  # if both players still have at least one life
    # then display current player scores
    # and pass the turn to next player by toggling current_player boolean
    # and repeat game loop 


# Task 1: Extract Nouns for Classes
  # Game, Player

# Task 2: Write their roles
  # Game calculates the score and determines whether the game continues
  #  - continuing or terminating state, player1, player2
  # Player will be the entity to take turns to play the game
  #  - username, score (determines winner) 
  # main.rb takes player_id, lives_counter (resets when starting a new game)

# Write down the methods for each class while also speaking to the following points:
# ...

  # Which class will contain the game loop (where each instance of the loop is the other players turn)? 
  # Game
  # Which class should manage who the current_player is? 
  # Game
  # Which class(es) will contain user I/O and which will not have any? 
  # Game will contain user I/O. Player will not contain user I/O.
