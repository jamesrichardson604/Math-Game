require './player'
require './question'

class Game 

  attr_accessor :player1, :player2, :turn

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @turn = 1
  end

  def start_game(current_player)
    question = Question.new
    puts "----- NEW TURN -----"
    puts current_player.lives
    puts "Player #{current_player.number}: #{question.question}" 
    print "> "
    player_answer = gets.chomp
    if player_answer.to_i == question.answer then
      puts "YES! Player #{current_player.number} got it!"
    else 
      puts "NO! Player #{current_player.number} is incorrect!"
      current_player.lose_a_life
    end
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  def play 
    while true
      if self.turn % 2 != 0 then
        current_player = player1
      elsif self.turn % 2 == 0 then
        current_player = player2
      end
      start_game(current_player)
      self.turn += 1
        
      if player2.lives == 0 then
        puts "Player 1 wins with a score of #{player1.lives}/3"
        puts "----- GAME OVER -----"
        exit(0)
      elsif player1.lives == 0 then
        puts "Player 2 wins with a score of #{player2.lives}/3"
        puts "----- GAME OVER -----"
        exit(0)
      end
    end
  end

end

play = Game.new
play.play


