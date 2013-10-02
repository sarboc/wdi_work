class Room
	attr_accessor :description, :prompt, :valid_responses, :next_rooms

	def initialize()
		@prompt = "Would you like to go 'up' or 'down'?"
		@valid_responses = ["up", "down"]
		@next_rooms = {"up" => FirstFloor.new,
						"down" => Dungeon.new}
		@description = 	["|----------------------------------------------------------|",
							"|The Last Thing You Hear: A Choose Your Own Adventure Story|",
							"|----------------------------------------------------------|",
							"Welcome to the castle! You see two staircases, one going up, and one going down."]
	end

	def get_valid_response
		puts prompt
		response = gets.chomp.downcase
		until valid_responses.include?(response)
			puts "Sorry! That wasn't a valid option."
			puts prompt
			response = gets.chomp.downcase
		end
		response
	end

	def play_again()
		puts "Would you like to play again?"
		response = get_valid_response("'yes' or 'no'", ["yes", "no"])
		response == "yes" ? Room.new.play : (puts "Goodbye! Please play again soon!")
	end

	def play
		description.each { |x| puts x }
		response = get_valid_response
		p response
		p next_rooms[response]
		next_rooms[response].play
	end

end

class Dungeon < Room
	def initialize
	end

	def play
		puts "You made it to the dungeon!"
	end
end

class FirstFloor < Room
	def initialize
	end

	def play
		puts "You made it to the first floor!"
	end
end

Room.new.play

# require 'pry'

# class Person
# 	attr_reader :name

# 	def initialize(name)
# 		@name  = name
# 	end

# 	def skillz
# 		["read", "eat", "speak"]
# 	end

# 	def say_name
# 		puts "Hello, my name is #{name}"
# 	end
# end

# class Programmer < Person
# 	def initialize(name)
# 		@name = name
# 	end

# 	def skillz
# 		super + ["ninja skillz", "write hawt codes"]
# 	end
# end

# class Student < Programmer
# 	def skillz
# 		super + ["learn to write hawt codes", "asking awesome questions", "getting ahead of Kyle's lectures"]
# 	end
# end

# class Instructor < Programmer
# 	def skillz
# 		super + ["use laser pointer", "sit at stool hunched over"]
# 	end
# end

# marco = Programmer.new("Marco")
# puts marco.say_name
# puts marco.skillz

# puts "\n"

# tj = Student.new("TJ")
# puts tj.say_name
# puts tj.skillz

# puts "\n"

# delmer = Instructor.new("Delmer")
# puts delmer.say_name
# puts delmer.skillz

# puts "\n"

# class Person
# 	@@number_of_people = 0

# 	attr_reader :name
# 	attr_writer :name

# 	def initialize(name)
# 		@name = name
# 		@@number_of_people += 1
# 	end

# 	def self.number_of_people
# 		@@number_of_people
# 	end

# 	# #Set method (setter)
# 	# def name=(other_name)
# 	# 	@name = other_name
# 	# end

# 	# #Get method (getter)
# 	# def name
# 	# 	@name
# 	# end

# 	def say_hello
# 		puts "hello #{@name}"
# 	end
# end

# person1 = Person.new("Sara")
# person2 = Person.new("Kristine")

# person1.say_hello
# person2.say_hello

# def greets(people, greetings)
# 	for x in (0..people.length - 1)
# 		puts "#{greetings[x]}, #{people[x]}"
# 	end
# end

# people = ["Sara", "Alec", "Janine"]
# greetings = ["Hello", "Hi", "How are ya"]

# greets(people, greetings)