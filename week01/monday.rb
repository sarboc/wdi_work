# name = "Sara LaFassett"
# age = 27
# talent = "Touching my tOngue to My nose"

# puts "Hi! my name is #{name}, I am #{age} years old, and my secret talent is #{talent.downcase}."
# puts "Hi, my name is " + name + ", I am " + age.to_s + " years old, and my secret talent is " + talent.downcase + "."

# def even?(num)
# 	num % 2 == 0
# end

# for num in 0..9
# 	num = (num ** 2) % 10
# 	puts num
# end	

input = "AAASSSDDDDRDDSASSDDDSSSAD"
compare = input[0]
count = 0

# input.each_char { |letter| 
# 	if letter  == compare
# 		count += 1
# 		puts letter + count.to_s
# 	else 
# 		if count <= 1
# 			puts letter + count.to_s
# 		else
# 			puts letter + count.to_s
# 		end
# 		count = 1
# 		compare = letter
		
# 	end
# }

#Color Suggestion (#8)
# def fav_color(color)
# 	unless color == "purple"
# 		puts "Pfffft. Purple is totally better than #{color}!"
# 	else puts "Oh. I really like purple, too"
# 	end
# end

# puts "What is your favorite color?"
# color = gets.chomp.downcase
# fav_color(color)

#Leter Pattern Problem (#9)
def compare_letters(string)
	#set up variables
	length = string.length
	i = 0
	count = 1

	while i < length #while you still have numbers in the string

		if string[i] == string[i + 1] #compare a letter to the one after it
			count += 1 #if equal, add to the count
			i += 1 #add to the iterator
		else
			if count == 1 
				print string[i] #just print number if count equals 1
			else
				print count.to_s + string[i] #print number and count if count > 1
			end
			i += 1
			count = 1
		end
	end
end

input = "AAASSSDDDDRDDSASSDDDSSSAD"
compare_letters(input)


#Prime Numbers Problem

# def is_prime?(num)		
# 	if num == 1
# 		return false
# 	elsif num == 2
# 		return true
# 	else
# 		i = 2
# 		if num % i == 0
# 			return false
# 		elsif i == num
# 			return true
# 		else i += 1
# 		end
# 	end
# end

# for num in (2..100)
# 	if is_prime?(num)
# 		puts num
# 	end
# end



