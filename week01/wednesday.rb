def proper_time(time)
	time = time.to_s.split(".")

	hours = time[0]
	minutes = ".#{time[1]}".to_f.round(2)
	p minutes
	minutes = (minutes * 60).round(0)

	if minutes == 0
		"#{hours} hours"
	else "#{hours} hours and #{minutes} minutes"
	end
end

p proper_time(3.4)
p proper_time(4.55)
p proper_time(5)
p proper_time(9.9809878878)

# #Challenge 3 - Palindrome
# def is_palindrome?(string)
# 	times = string.length/2
# 	last = string.length - 1
# 	first = 0

# 	times.times do
# 		if string[last] == string[first]
# 			first += 1
# 			last -= 1
# 		else return false
# 		end
# 	end

# 	true
# end

# def palindrome_statement(string)
# 	if is_palindrome?(string)
# 		puts "#{string} is a palindrome. :-)"
# 	else puts "#{string} is not a palindrome. :-("
# 	end
# end

# def prompt_chomp
# 	puts "Enter a word to see if it's a palindrome!"
# 	string = gets.chomp
# 	palindrome_statement(string)
# 	go_again
# end

# def go_again
# 	puts "Would you like to enter another word? [y/n]"
# 	answer = gets.chomp

# 	until ["y", "n"].include?(answer)
# 		puts "That wasn't a valid entry. Please answer 'y' or 'n'."
# 		answer = gets.chomp
# 	end

# 	if answer == "y"
# 		prompt_chomp
# 	else puts "Goodbye!"
# 	end
# end

# prompt_chomp

# #Challenge 2
# # def is_prime?(num)
# # 	if num == 1
# # 		return false
# # 	elsif num == 2
# # 		return true
# # 	else
# # 		i = 2
# # 		if num % i == 0
# # 			return false
# # 		elsif i == num
# # 			return true
# # 		else i += 1
# # 		end
# # 	end
# # end

# # for num in (1..100)
# # 	if is_prime?(num)
# # 		puts num
# # 	end
# # end

# #Challenge 1 - Add strings
# # def interweave(str1, str2, str3)
# # 	lengths = [str1.length, str2.length, str3.length]
# # 	length = lengths.max

# # 	i = 0
# # 	strings = []

# # 	while i < length
# # 		strings << str1[i] if str1[i]
# # 		strings << str2[i] if str2[i]
# # 		strings << str3[i] if str3[i]
# # 		i += 1
# # 	end

# # 	strings.each do |x| print x end
# # 	puts ""
# # end

# # interweave("foobar", "bar", "buzzkill")

# # def inner(param)
# # 	param - 1
# # end

# # def middle(param)
# # 	inner(param - 1)
# # end

# # def outer(param)
# # 	middle(param - 1)
# # end

# # def prompt_and_chomp(prompt)
# # 	puts prompt
# # 	gets.chomp
# # end

# # def get_valid_response(prompt, valid_response)
# # 	until valid_response.include?(prompt_and_chomp(prompt))
# # 		puts "That wasn't a valid option."
# # 	end
# # end

# # variable = get_valid_response("Would you like to go 'up' or 'down'?", ["up", "down"])

# # def status_of_world
# # 	if 1 == 2 then "messed up" else "ok" end
# 	# 1 == 2 ? "messed up" : "ok"
# # end

# # p status_of_world

# # def add_numbers(first, second)
# # 	first + second
# # end

# # p add_numbers(1, 2)

# # def say(word = "Hello")
# # 	puts word 
# # end

# # say

# # say("Yo mama")