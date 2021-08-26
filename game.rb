# import Player class
require './player'

# keep track of the state and behaviour of the entire Game object
class Game
  # method: initializer
  def initialize(player1, player2)  
    # create two instance variables of Player
    @player1 = player1
    @player2 = player2
    @active_player = @player1
  end

  def generate_random_num
    # get random number under 100
    rand(-100)
  end

  def score_tracker
    puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
  end 

  def decrease_score
    # if active_player's answer is wrong, take away one score point
    @active_player.score -= 1
  end 

  def swap_players
    # if active player is player1 then make it player2
    if @active_player == @player1
      @active_player = @player2
      # vice versa
      else @active_player = @player1
    end
  end

  def players_alive?
    # check if each player still has a score above 0/3
    @player1.score > 0 && @player2.score > 0
  end

  def generate_question
    # add two randomly generated numbers to form question
    ran_num1 = generate_random_num
    ran_num2 = generate_random_num
    answer = ran_num1 + ran_num2
    puts "--#{@active_player.name}'s turn--"
    puts "What does #{ran_num1} plus #{ran_num2} equal?"

    # get input from the user
    input = gets.chomp.to_i
    # check if user input matches the answer
    if answer == input
      puts "YES! You are correct."
      score_tracker
    else
      puts "Seriously? No!"
      decrease_score
      score_tracker
    end
    # call method which switches active_player
    swap_players
  end

  def start
    puts "----GAME START----"
    # displays player information
    puts @player1.info
    puts @player2.info
    # run game loop while no one has score of 0/3
    while players_alive?
      generate_question
    end
    # currently active player is winner, display their score
    puts "#{@active_player.name} wins with a score of #{@active_player.score}/3."
    puts "----GAME OVER----"
    puts "Good bye!"
  end

end