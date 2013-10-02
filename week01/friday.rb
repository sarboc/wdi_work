# open_spaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

# p open_spaces
# open_spaces.delete("5")
# p open_spaces

# solutions = [
# 			"123",
# 			"147",
# 			"159",
# 			"258",
# 			"357",
# 			"369",
# 			"456",
# 			"789" 
# 		]

# p solutions

# move = "1"
# marker = "X"

# 8.times do |i|
# 	new_line = solutions[i].gsub move, marker
# 	solutions[i] = new_line
# end

# p solutions

# 3.times do |board_line|
# 	3.times do |board_space|
# 		if board[board_line][board_space] == move
# 			board[board_line][board_space] = marker
# 		end
# 	end
# end



# solution = ["X", "X", "X"]

# p ["X", "X", "X"] == solution


def recur_fact(n)
	if n == 0
		1
	else
		n * recur_fact(n - 1)
	end
end

def loop_fact(n)
	if n - 1 <= 0
		n = 1
	elsif n < 0
		puts "You can't factorial negative numbers!"
	else
		total = 1
		n.times do
			total *= n
			n -= 1
		end
		total
	end
end

def fancy_fact(n)
	(1..n).reduce(:*)
end

puts recur_fact(5)
puts loop_fact(5)
puts fancy_fact(5)

# def recurse(n)
# 	if n == 0
# 		puts "Bottom of the rabbit hole"
# 	end
# 	puts "falling"
# 	recurse(n - 1)
# 	puts "rising"
# end

# def recurse_words(words)
# 	if words.empty?
# 		puts "Done"
# 	else
# 		word = words.pop
# 		puts "Currently on #{word}"
# 		recurse_words(words)
# 		puts "Done with #{word}"
# 	end
# end

# recurse_words([one, two, three, four, five])

# class Rider
#   attr_accessor :name, :moto_model

#   def initialize(name, moto_model)
#     @name = name
#     @moto_model = moto_model
#   end

#   def say_name(rider)
#     puts "My name is #{rider}!"
#   end
# end

# joe = Rider.new("Joe", "Harley")
# sally = Rider.new("Sally", "Honda")
# sam = Rider.new("Sam", "Kawasaki")

# riders = {
#   "Joe" => joe,
#   "Sally" => sally,
#   "Sam" => sam
# }

# riders.each do |key, value| value.say_name(key) end

# class FooException < StandardError

# end

# class BarException < StandardError

# end

# begin
# 	a = rand(0..1)
# 	if a > 0.5
# 		raise FooException
# 	else 
# 		raise BarException
# 	end
# rescue BarException
# 	puts "Something went wrong"
# rescue FooException
# 	puts "AHHHHHHHHHHHH"
# end


# begin
# 	puts response
# rescue
# 	puts "You haven't defined that variable!"
# 	puts "Want to define it now?"
# 	response = gets.chomp
# ensure
# 	puts response
# end

# begin
# 	print "What do you want to divide by?"
# 	number = gets.chomp.to_i
# 	puts "The result of 3 divided by #{number} is #{3 / number}"
# rescue
# 	puts "Wow your program exploded"
# 	puts "You can't divide by 0 or a string"
# 	retry
# ensure
# 	puts "You eventually divided by 3!"
# end

