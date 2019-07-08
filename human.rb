require '/home/cabox/workspace/mastermind/player.rb'

class Human < Player
  
  def initialize
    super
  end
  
  def pick_code(colors, pegs)
    pegs.times do 
      puts "Please choose one of the following colors: #{colors.join(" ")}"
      choice = gets.chomp.downcase
      @secret_code.push(choice)
    end 
    @secret_code
  end
  
  def crack_code(code, rounds)
    
  end
  
end