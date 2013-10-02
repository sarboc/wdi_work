require "./game_rules.rb"

def new_players(game)
	game.new_game_message
	puts "Who will be player 1?"
	game.player1 = gets.chomp
	# game.current_player = game.player1
	puts "Welcome, #{game.player1}! Your maker will be 💩."

	puts
	puts "Who will be player 2?"
	game.player2 = gets.chomp
	puts "Welcome, #{game.player2}! Your maker will be 💨."
	game
end

def play_game(game)
	until game.winner? || game.tie?
		game.update_turn
		game.new_turn
		game.update_board
	end

	game.print_board
	puts "Congratulations, #{game.current_player}! You won!" if game.winner?
	puts "Tie game!" if game.tie? && !game.winner?
	game
end

game = Game.new
new_players(game)
play_game(game)

play_again = true

while play_again
	puts "Would you like to play again?"
	puts
	puts "Enter 1 to play again with the same players."
	puts "Enter 2 to play again with the same players, but switch turn order."
	puts "Enter 3 to play again with new players."
	puts "Enter anything else to quit"
	response = gets.chomp

	if response == "1"
		player1 = game.player1
		player2 = game.player2
		game = Game.new(player1, player2)
		play_game(game)
	elsif response == "2"
		player1 = game.player1
		player2 = game.player2
		game = Game.new(player1, player2)
		game.update_turn
		play_game(game)
	elsif response == "3"
		game = Game.new
		new_players(game)
		play_game(game)
	else play_again = false 
		puts "Goodbye!"
	end
end




