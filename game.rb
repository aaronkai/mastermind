class Game
  attr_accessor :pegs, :rounds, :computer_role, :guesses, :colors
  attr_writer :secret_code
 
  def initialize(human, computer)
    @secret_code = []
    @computer = computer
    @human = human
    @pegs = 4
    @rounds = 12
    @computer_role = nil
    @guesses = []
    @colors = %w(red blue yellow purple green orange)
  end

  def choose_computer_role
    puts "Is the computer the 'code picker' or the 'code guesser'?"
    until computer_role do
      puts "Enter 'picker' or 'guesser'"
      @computer_role = gets.chomp
      if computer_role == 'picker' || computer_role == 'guesser'
        puts "Valid choice. Let's continue. \n "
      else
        puts "Invalid Choice"
        @computer_role = nil
      end
    end
  end
  
  def player_set_code
    if @computer_role == "picker"
      @secret_code = @computer.pick_code(self)
    else 
      @secret_code = @human.pick_code(self)
    end    
  end  
  
  
  
  def guess_code
    current_round = 1
    puts "Time to GUESS THE CODE"
    
    until current_round > rounds
      puts "ROUND #{current_round}"
      if computer_role == "picker"
        @human.play_round(self)
      else
        @computer.play_round(self)
      end
      current_round += 1
      
#       puts guesses[0]
       puts "Congrats you won" if winner? 
#       puts "you have #{correct_pegs} correct pegs"
#       puts "you have #{correct_colors} correct colors"
   
    end
  end
  
  def winner?
    puts guesses[0]
    puts secret_code.join(" ")
  end
  
  def correct_pegs
    counter = 0
    guesses[guesses.size].each_with_index do |guess, index|
      if guess == secret_code[index]
        counter += 1
      end
    end
  end
  
  def correct_colors
    counter = 0
    guesses[guesses.size].each do guesses
      if secret_code.include?(guess)
        counter += 1
      end
    end
  end
  
    

end