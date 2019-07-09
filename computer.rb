require '/home/cabox/workspace/mastermind/player.rb'

class Computer < Player
  
  def initialize
    super
  end
  
  def pick_code(mastermind)
    mastermind.pegs.times do 
      @secret_code.push(mastermind.colors[rand(mastermind.colors.size)])
    end
    mastermind.secret_code=@secret_code
  end 
  
  def play_round(mastermind_instance)
    current_round = 1
    until current_round >= rounds
      
      current_round += 1
    end
  end
  
end