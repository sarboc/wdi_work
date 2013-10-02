# Building Ruby Familiarity
 
# In this exercise you will take a first look at some common commands in Ruby
# The idea here is to build familiary with Ruby syntax
# This will likely be the first time you've seen some of these commands
# Just type them in and see the displayed output
 
# Steps:
#   1. Open up a new terminal window
#   2. Launch irb
#   3. Paste the line of code into irb or pry
#   4. Press return
#   5. Write down the displayed output
#   6. Repeat steps 3-5 for all lines below in order
 
 
first_ans = 7 / 2
=> 3
 
puts first_ans
3
=> nil
 
print first_ans
3 => nil
 
first_ans = 7 / 2.to_f
=> 3.5
 
first_ans = 7.to_f / 
=> 3.5
 
first_ans = 7 / 2.0
=> 3.5
 
first_ans = 7.0 / 2
=> 3.5
 
first_ans = first_ans.round * 4
 => 16
 
 
def get_character(full_string, index)
  full_string[index]
end
=> nil
 
message_string = "oicdlcwhejkeenoemrstuo"
 => "oicdlcwhejkeenoemrstuo"
 
 
character_1 = get_character(message_string, 4)
=> "l"
 
character_2 = get_character(message_string, 7)
=> "h"
 
character_3 = get_character(message_string, 2)
 => "c"
 
 
message_array = [character_1, character_2]
=>["l", "h"]
 
message_array.push(character_2)
=>["l", "h", "h"]
 
message_array.pop()
=>"h"
 
message_array.push(character_3)
=>["l", "h", "c"]
 
 
message_array
=>["l", "h", "c"]
 
puts message_array
l
h
c
=> nil
 
print message_array
["l", "h", "c"]
=> nil 
 
value_float_1 = Math.sin(Math::PI / 2)
=> 1.0
 
value_float_2 = Math.cos(Math::PI)
=> -1.0
 
 
value_float_3 = (value_float_1 + value_float_2)
=> 0.0
 
value_integer_1 = (value_float_1 + value_float_2).to_i
=> 0

 
value_float_1 = value_float_1 * 4
=> 4.0
 
value_float_2 *= 
=> -5.0
 
value_float_2 = value_float_2.abs
=> 5.0
 
value_integer_1 += 8
=> 8
 
value_float_4 = value_integer_1 * 3
=> 24
 
value_float_3 -= 1
 => -1.0
 
 
number_array = [value_float_1, value_float_2, value_float_3, value_float_4]
=> [4.0, 5.0, -1.0, 24]
 
number_array.push(first_ans)
=> [4.0, 5.0, -1.0, 24, 16]
 
number_array.unshift(value_integer_1)
=> [8, 4.0, 5.0, -1.0, 24, 16]
 
number_array.push(value_integer_1)
=> [8, 4.0, 5.0, -1.0, 24, 16, 8]
 
number_array.unshift( Math.sqrt(36) )
=> [6.0, 8, 4.0, 5.0, -1.0, 24, 16, 8]
 
number_array.delete_at(5)
=> 24
 
 
 
number_array.push( [19, 21, 6, 3, 1] )
=> [6.0, 8, 4.0, 5.0, -1.0, 16, 8, [19, 21, 6, 3, 1]]
 
number_array.flatten!
 => [6.0, 8, 4.0, 5.0, -1.0, 16, 8, 19, 21, 6, 3, 1]
 
number_array.each { |current_index| puts get_character(message_string, current_index) }
w
e
l
c
o
m
e
t
o
w
d
i
=> [6.0, 8, 4.0, 5.0, -1.0, 16, 8, 19, 21, 6, 3, 1]
 
#--------------------------------------------------------------------------------------------------
 
#If you're feeling really comfortable with the above exercises, 
#here are some more challenging ones.
 
 
#*** THE FOLLOWING QUESTIONS BELOW CAN BE COMPLETED IN SUBLIME. 
  #USE IRB TO PLAY AROUND WITH THE EXERCISES.
	 #WRITE YOUR ANSWERS BELOW ***
 
#1. What is the problem with the following code?
	#my variable = "Mr. White"
	The variable name has a space in it. It should read "my_variable".
 
 
#2. Set the variable x to be 5 and the variable y to be 7 and 
	#write 5 + 7 = 12 with string interpolation.
	x = 5
	y = 12
	puts "#{x} + #{y} = #{x+y}"
 
 
#3. Update the code, so it can run successfully:
	#band = "Blink" + 182
 	band = "Blink" + " 182"
 	or
 	band = "Blink" + " " + 182.to_s
 	or
 	band = "Blink 182"
 
#4. Return the number of characters in the string "The Godfather"
	"The Godfather".length
 
#5. Prime numbers
	#Print out the prime numbers between 1 and 100.
	def is_prime?(num)
		if num == 1
			return false
		elsif num == 2
			return true
		else
			i = 2
			if num % i == 0
				return false
			elsif i == num
				return true
			else i += 1
			end
		end
	end

	for num in (1..100)
		if is_prime?(num)
			puts num
		end
	end

 
 
#6. Write a program which asks for a person's first name, then last, then age. 
	#Finally, it should greet the person using their full name and age.
	first_name = gets.chomp
	last_name = gets.chomp
	age = gets.chomp
	puts "Hello #{first_name} #{last_name}. You are #{age} years old!"
 
 
#7. What is the difference between if and unless
	if runs if a condition is true
	unless runs unless a condition is true (ie the condition is false)
 
 
#8. Write a program which asks for a person's favorite color. Have your program 
	#add another color to the list, then suggest the result a better favorite color.
	def fav_color(color)
		unless color == "purple"
			puts "Pfffft. Purple is totally better than #{color}!"
		else puts "Oh. I really like purple, too"
		end
	end

	puts "What is your favorite color?"
	color = gets.chomp.downcase
	fav_color(color)
 
 
#String Exercise: 
#9. Use a pattern and consolidate the amount of characters into a simplified string.
 
#input pattern = "AAASSSDDDDRDDSASSDDDSSSAD"
#output pattern = 3A3S4DR2DSA2S3D3SAD
 
#If a character is represented more than once, 
#append the number of occurences in front of it. 
#If a chracter is only represented once, just put that letter.
 
#Hint Use a loop to iterate over a string. 
#You can reference characters in a string similar to an array.

def compare_letters(string)
	length = string.length
	i = 0
	count = 1
	while i < length
		if string[i] == string[i+ 1]
			count += 1
			i += 1
		else
			if count == 1
				print string[i]
			else
				print count.to_s + string[i]
			end
			i += 1
			count = 1
		end
	end
end

input = "AAASSSDDDDRDDSASSDDDSSSAD"
compare_letters(input)
