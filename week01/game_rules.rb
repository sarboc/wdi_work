class Game
	attr_accessor :solutions, :board, :open_spaces, :player1, :player2, :current_player, :marker, :move, :turn

	def initialize(player1=nil, player2=nil)
		@solutions = [
			"123",
			"147",
			"159",
			"258",
			"357",
			"369",
			"456",
			"789" 
		]
		@board = [" 1 | 2 | 3 ",
				"-----------",
				" 4 | 5 | 6 ",
				"-----------",
				" 7 | 8 | 9 "]
		@open_spaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
		@turns = 0
		@turn = -1 
		#game is set to start with player2 because it runs update_turn before the first move
		#the first update_turn is run, it will set the variable to player1 (the proper first player)
		@marker = "X"
		@player1 = player1
		@player2 = player2
	end

	def print_board
		puts
		board.each do |line| puts line end
		puts
	end

	def new_game_message
		puts
		puts "Welcome to Tic Tac Toe!"
		puts
	end

	# def get_valid_name
	# 	response = gets.chomp
	# end

	# def new_player
	# 	player = gets.chomp
	# end

	def new_turn
		@turns += 1
		puts
		puts "Your turn, #{current_player}."
		puts "Where would you like to move?"
		print_board
		@move = gets.chomp
		until open_spaces.include? move
			puts "Sorry! That space is already taken or isn't a valid option. Please choose an open space."
			@move = gets.chomp
		end
	end

	def update_board
		#update board
		i = 0
		while i < 5
			new_line = @board[i].gsub @move, @marker
			@board[i] = new_line
			i += 2 #skips lines that are all dashes
		end

		#update solutions
		8.times do |i|
			new_line = @solutions[i].gsub @move, @marker
			@solutions[i] = new_line
		end

		#update open spaces
		@open_spaces.delete @move
	end

	def update_turn
		@turn *= -1
		if turn > 0
			@current_player = @player1
			@marker = "💩"
		else
			@current_player = @player2
			@marker = "💨"
		end
	end

	def winner?
		return false if @turns < 5 
		# you can't win a game in less than 5 turns, so skip the check if we haven't gotten that far

		@solutions.each do |solution|
			return true if solution == "💩💩💩" || solution == "💨💨💨"
		end
		false
	end

	def tie?
		if @turns == 9
			true
		else false
		end
	end

end