require '/home/cabox/workspace/mastermind/player.rb'

class Computer < Player
  
  def initialize
    super
  end
  
  def pick_code(colors, pegs)
    pegs.times do 
      @secret_code.push(colors[rand(colors.size)])
    end
    @secret_code
  end 
  

end