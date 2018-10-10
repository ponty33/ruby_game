require './player'

class Game
  attr_accessor :ans_player
  def initialize
    @ans_player = '1'
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def ans_player
    @ans_player
  end

  def ans_player=(value)
    @ans_player = value
  end

  def question

    while @player1.life > 0 && @player2.life > 0 do
      num1 = 1 + rand(20)
      num2 = 1 + rand(20)
      expection = num1 + num2
    

      puts "What does #{num1} plus #{num2} equal?"
      ans = gets.chomp
      
      if (ans.to_i == expection)
        puts "YES! You are correct!"
        puts ""
        puts ""
        puts "---------------------------------------------"
        puts "P1: #{@player1.life}/3 vs P2 #{@player2.life}/3"
        puts "---------------------------------------------"
        
 

      else
        puts "NO! Thats not coorect"
        puts ""
        puts ""
  
        if (ans_player == '1')
          @player1.life -= 1
        else
          @player2.life -= 1

        end
        puts "---------------------------------------------"
        puts "P1: #{@player1.life}/3 vs P2 #{@player2.life}/3"
        puts "---------------------------------------------"

      

      end
      switch
    end
    end_game
  end 

  def switch
    if ans_player == '1'
      self.ans_player = '2'
    else 
      self.ans_player = '1'
    end
  end 

  def end_game
    if (@player1.life == 0)
      puts '==========================='
      puts "     WINNER Player 2"
      puts '==========================='
    elsif (@player2.life == 0)
      puts '==========================='
      puts "     WINNER Player 1"
      puts '==========================='
    end
  end
end