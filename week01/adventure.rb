def play_again()
	puts ""
	puts "Would you like to play again?"
	response = get_valid_response("'yes' or 'no'", ["yes", "no"])
	response == "yes" ? begin_adventure : (puts "Goodbye! Please play again soon!")
end

def prompt_and_chomp(prompt)
	puts prompt
	gets.chomp.downcase
end

def get_valid_response(prompt, valid_response)
	until valid_response.include?(response = prompt_and_chomp(prompt))
		puts "Sorry! That wasn't a valid option."
	end
	response
end

def begin_adventure() 
	puts "|----------------------------------------------------------|"
	puts "|The Last Thing You Hear: A Choose Your Own Adventure Story|"
	puts "|----------------------------------------------------------|"

	puts "Welcome to the castle! You see two staircases, one going up, and one going down."
	
	direction = get_valid_response("Would you like to go 'up' or 'down'?", ["up", "down"])
	
	if direction == "up"
		first_floor()
	elsif direction == "down"
		dungeon()
	end

end

def dungeon()
	puts ""
	puts "Holy cow! You went to the dungeon!"
	puts "A dark wind blows. The  torches die."
	puts "The last thing you hear is the scratching of large claws."
	play_again()
end

def first_floor()
	puts ""
	puts "Hmmm... this looks like the first floor, where the family sleeps. You see three bedrooms."
	bedroom = get_valid_response("Would you like to go to the 'pink', 'green', or 'blue' bedroom?", ["pink", "green", "blue"])

	case bedroom
	when "pink"
		pink_bedroom()
	when "blue"
		blue_bedroom()
	when "green"
		green_bedroom()
	end
end

def pink_bedroom()
	puts ""
	puts "The pink room is aptly named, and in covered in bright pink furnishings."
	puts "The wallpaper is pink. The carpet is pink. The bedspread is pink. The curtains are pink. EVERYTHING is... well... pink."
	puts "The only thing that isn't pink is the large stain in the middle of the floor. Which is... red."
	puts "As you turn to run back into the hall, small doll shoes puncture both eyes."
	puts "The last thing you hear is the deranged giggle of a young girl."
	play_again()
end

def blue_bedroom()
	puts ""
	puts "There is a noticeable chill as you enter the blue room."
	puts "As the door slams behind you, an icy breeze begins to blow."
	puts "The last thing you hear is the every slowing chatter of your own teeth."
	play_again()
end

def green_bedroom()
	puts ""
	puts "The room is bathed in an eery green light. The only object within is a large cauldron."
	puts "You walk over to the cauldron."
	puts "You wave your hand through the green steam rising from the pot."
	puts "You have a sudden urge to touch the contents within."
	puts "Do you touch the liquid?"
	
	touch = get_valid_response("'yes' or 'no'", ["yes", "no"])

	if touch == "yes"
		couldron_touch()

	elsif touch == "no"
		walk_away()

	end
end

def couldron_touch()
	puts ""
	puts "As you plunge your hand into the liquid, you're surprised by how cool it is."
	puts "The temperature is much closer to that of a living thing than boiling point."
	puts "Suddenly, you hear a heartbeat coming from the cauldron."
	puts "The last thing you hear is the volume of your scream diminishing as the cauldron absorbs your life force."
	play_again()
end

def walk_away()
	puts ""
	puts "Um... ok. I guess you can just walk away. Is that what you would like to do? Walk away?"
	
	walk = get_valid_response("'yes or 'no'?", ["yes", "no"])

	if walk == "yes"
		leave()
	elsif walk == "no"
		dont_leave()
	end
end

def leave
	puts ""
	puts "That's cool. See you later!"
	puts "You walk out of the castle, into the woods, and live a long and happy life."
	play_again()
end

def dont_leave()
	puts ""
	puts "Fool! You should have left!"
	puts "The last thing you hear is the sound of the cauldron bubbling over, the liquid oozing out and covering your body in molten goo."
	play_again()
end

begin_adventure