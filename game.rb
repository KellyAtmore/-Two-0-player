require "./player.rb"
require "./question.rb"

class Game

  def initialize
@player1 = Player.new("player 1")
@player2 = Player.new("player 2")
@current_player = @player1

  end


  def game

while @player1.lives > 0 && @player2.lives > 0
  question = Question.new

  puts "----- NEW TURN -----"
  puts "#{@current_player.name}: #{question.question}" 

  user_input = gets.chomp.to_i

  if user_input != question.answer
    @current_player.lives -= 1
    puts "#{@current_player.name}, wrong answer!"

  else 
    puts "#{@current_player.name}, correct! Good Job!"

end

puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
@current_player = @current_player == @player1 ? @player2 : @player1
end
puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
puts "----- GAME OVER -----"

end
end 
