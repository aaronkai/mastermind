#require '/home/cabox/workspace/mastermind/secret_code.rb'
require '/home/cabox/workspace/mastermind/game.rb'
require '/home/cabox/workspace/mastermind/human.rb'
require '/home/cabox/workspace/mastermind/computer.rb'


human = Human.new
computer = Computer.new
current_game = Game.new(human, computer)
current_game.choose_computer_role
current_game.player_set_code
current_game.guess_code



