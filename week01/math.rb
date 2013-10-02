def is_number(x)
	until x.to_i.to_s == x
		puts "That's not a number silly! Please enter a number."
		x = gets.chomp
	end
end

max_val = 9
top_answer = max_val + 1
answer = rand(max_val) + 1

puts "Let's play a guessing game! Try and guess the number I'm thinking of, from 1 to #{top_answer}."
guess = gets.chomp
is_number(guess)

while guess.to_i != answer
	if guess.to_i < 1
		puts "Our guessing range starts at 1! Guess again."
		puts guess.to_i
		guess = gets.chomp
		is_number(guess)

	elsif guess.to_i > max_val
		puts "Your guess is too large! We're only guessing numbers between 1 and #{top_answer}. Guess again."
		guess = gets.chomp
		is_number(guess)

	elsif (answer - guess.to_i).abs <= 2
		puts "You're close! Try again."
		guess = gets.chomp
		is_number(guess)

	else puts "Your're way off! Try again."
		guess = gets.chomp
		is_number(guess)
	end
end

puts "Congrats! #{guess} is the number I was thinking of!"
