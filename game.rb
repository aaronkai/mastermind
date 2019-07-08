class Game
  
  def initialize
    @secret_code = []
    @computer = Computer.new
    @human = Human.new
    @pegs = 4
    @rounds = 12
  end
  
  def self.colors
    %w(red blue yellow purple green orange)
  end

  def choose_computer_role
    puts "Is the computer the 'code picker' or the 'code guesser'?"
    choice = nil
    until choice do
      puts "Enter 'picker' or 'guesser'"
      choice = gets.chomp
      if choice == 'picker' || choice == 'guesser'
        puts "Valid choice. Let's continue."
      else
        puts "Invalid Choice"
        choice = nil
      end
    end
    choice
  end
  
  computer_role = choose_computer_role
  
  def set_code(computer_role)
    if computer_role == "picker"
      @secret_code = @computer.pick_code(Game.colors, @pegs)
    else
      @secret_code = @human.pick_code(Game.colors, @pegs)
    end    
    puts @secret_code
  end  
  
  def crack_code
    if computer_role == "picker"
      @human.crack_code(@secret_code, @rounds)
    else
      @computer.crack_code(@secret_code, @rounds)
    end
  end
  
end