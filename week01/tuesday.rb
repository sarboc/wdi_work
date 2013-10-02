my_hash = Hash.new

puts "Want to start a hash?"
response = gets.chomp

while response == "y"
	puts "Give us your name"
	key = gets.chomp

	puts "Tell us something about you"
	val = gets.chomp

	my_hash[key] = val

	puts "Continue?"

	response = gets.chomp
end

my_hash.each { |k, v| puts "#{k} #{v}"}

# user_list = []

# puts "Would you like to start a nested list? [y/n]"
# response = gets.chomp

# while response == "y" or response == "yes"
# 	puts "Give me your name"
# 	user_list << gets.chomp

# 	puts "Would you like to start a list? [y, n]"
# 	second_response = gets.chomp

# 	item_list = []

# 	while second_response == "y"
# 		puts "What would you like to add to the list?"
# 		item_list << gets.chomp

# 		puts "Anything else? [y/n]"
# 		second_response = gets.chomp
# 	end

# 	user_list << item_list

# 	puts "Would you like to add another person? [y/n]"
# 	response = gets.chomp
# end

# p user_list

#Christian's answer, with awesome formatting
# for x in (1..9)
#   for y in (1..9)
# 		answer = x * y
# 		print "%-3d  " % answer
# 	end
# 	puts
# end

# my_list = []

# puts "Woudld you like to start a list? [y/n]"
# response = gets.chomp

# while response == "y"
# 	puts "Give me something to put in the list!"
# 	my_list << gets.chomp

# 	puts "Anything else? [y, n]"
# 	response = gets.chomp
# end

# p my_list

# my_people = ["Sara", "Janine", "John", "Alec"]
# my_people.each { |person| puts person}

# def extract(low, high, array)
# 	i = low
# 	new_array = []

# 	while i <= high
# 		new_array << array[i]
# 		i += 1
# 	end
# 	new_array
# end

# def splice(int, array)
# 	i = 0
# 	new_array = []

# 	while i <= int
# 		new_array << array[i]
# 		i += 1
# 	end
# 	new_array
# end

# my_array = [1, 2, 3, 4, 5, 6]
# p extract(2, 4, my_array)
# p splice(2, my_array)



# for x in (1..9)
# 	for y in (1..9)
# 		print "#{x * y}\t"
# 	end
# 	puts ""
# end

# highest_power = 0

# x = 1
# highest_power = 0

# while 3 ** x < 10_000
# 	highest_power = 3 ** x
# 	x += 1
# end

# puts "#{highest_power} is the highest power of 3 less than 10,000"

# for y in 1..25
# 	number_count = 0
# 	for x in 1..1000
# 		number_count += 1 if x % y == 0
# 	end
# 	puts "There are #{number_count} numbers divisible by #{y} from 1 to 1000"
# end

# i = 0

# # while i < 10
# # 	puts "hello world"
# # 	i += 1
# # end

# # begin
# # 	puts "hello"
# # 	i += 1
# # end while i < 10

# until i == 10
# 	puts "Hello mama"
# 	i += 1
# end