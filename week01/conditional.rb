puts "How old are you?"
age = gets.chomp.to_i

# if age >= 21
# 	puts "Woohoo! Let's party!"
# elsif age == 20
# 	puts "So close, man! But you can't come with."
# else
# 	puts "Sorry, dude. You have to stay home."
# end

puts age >= 21 ? "Woohoo! Let's party!" : "Sorry, dude. You have to stay home."

# if name == "jackie"
# 	puts "#{name} is cool!"
# elsif name == "kyle"
# 	puts "#{name} is awesome!"
# elsif name == "delmer"
# 	puts "#{name} is Del."
# else puts "Who is #{name}?"
# end

# case name
# 	when "jackie"
# 		puts "#{name.capitalize} is cool!"
# 	when "kyle"
# 		puts "#{name.capitalize} is awesome"
# 	when "delmer"
# 		puts "#{name.capitalize} is Del"
# 	else puts "Who is #{name.capitalize}?"
# end