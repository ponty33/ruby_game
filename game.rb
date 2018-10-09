
class Game

  def initialize
  
  end

  def turn

  end

  def question
    num1 = 1 + rand(20)
    num2 = 1 + rand(20)
    expection = num1 + num2
    puts "What does #{num1} plus #{num2} equal?"
    ans = gets.chomp
    if (ans.to_i == expection)
      puts "YES! You are correct!"
    else
      puts "NO! Thats not coorect"
    end
  end 

  def end_game
    

end