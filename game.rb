require './player'

class Game
  attr_accessor :ans_player1
  def initialize
    @ans_player = 1
  end

  def ans_player
    @ans_player
  end

  def ans_player=(value)
    @ans_player = value
  end

  def start
    player1 = Player.new(1)
    player2 = Player.new(2)
    question(player1, player2)
  end

  def question(player1, player2)
  
    while (player1.life > 0 && player2.life > 0)
      num1 = 1 + rand(20)
      num2 = 1 + rand(20)
      expection = num1 + num2
    
      puts ans_player

      if (ans_player == 1)
        puts "Player 1"
      elsif (ans_player == 2)
        puts "Player 2"
      end

      puts "What does #{num1} plus #{num2} equal?"
      ans = gets.chomp
      
      if (ans.to_i == expection)
        puts "YES! You are correct!"
        puts ""
        puts ""
        puts "---------------------------------------------"
        puts "P1: #{player1.life}/3 vs P2 #{player2.life}/3"
        puts "---------------------------------------------"
        
        if (ans_player == 1)
          ans_player = 2
        else (ans_player == 2)
          ans_player = 1
        end

        puts ans_player

      else
        puts "NO! Thats not coorect"
        puts ""
        puts ""
  
        if (ans_player1 == true)
          player2.life -= 1
        else
          player1.life -= 1

        end
        puts "---------------------------------------------"
        puts "P1: #{player1.life}/3 vs P2 #{player2.life}/3"
        puts "---------------------------------------------"

        
        if (ans_player == 1)
          ans_player= 2

        elsif (ans_player == 2)
          ans_player1 = 1

        end

      end

    end
    end_game(player1, player2)
  end 

  def end_game(p1, p2)
    if (p1.life == 0)
      puts '==========================='
      puts "     WINNER Player 2"
      puts '==========================='
    else
      puts '==========================='
      puts "     WINNER Player 1"
      puts '==========================='
    end
  end
end