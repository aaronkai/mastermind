require '/home/cabox/workspace/mastermind/player.rb'

class Human < Player
  
  def initialize
    super
  end
  
  def pick_code(mastermind)
    mastermind_instance.pegs.times do 
      puts "Please choose one of the following colors: #{mastermind.colors.join(" ")}"
      choice = gets.chomp.downcase
      mastermind.secret_code.push(choice)
    end 
  end
  
  def play_round(mastermind)
    mastermind.pegs.times do |peg|
      selection = ""
      until mastermind.colors.include?(selection)
        puts "Make a choice for Peg #{peg+1}"
        puts "Color choices are #{mastermind.colors.join(" ")}"
        selection = gets.chomp.downcase
        if mastermind.colors.include?(selection)  
          puts "Valid Choice. \n"
          guess.push(selection)
        else
          puts "invalid choice. \n"
        end
      end
    end
    puts guess
  mastermind.guesses.push(guess)
  end
  
end