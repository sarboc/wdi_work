def count_stops(start, stop)
	#Check to see which is first in the array, start or stop
	#Why compare? Because you can travel on the subway in both directions

	if start < stop
		#If start comes first, then subtract the index of start from the index of stop
		#You could use a while loop with a count, but the count would be equal to the difference of the index values anyway
		count = stop - start
	
	elsif start > stop
		#If stop comes first, then subtract the index of stop from the index of start
		count = start - stop
	
	else count = 0
	
	end
	count #returns the value of count
end

def stop_message(count, start, stop)
	#This is in a method so you only have to write it once.
	#Tells the user the number of stations from start to stop
	puts "It will take #{count} stops to get from #{start} to #{stop}."
end

subway = {n_line: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
			l_line: ["8th", "6th", "Union Square", "3rd", "1st"],
			s_line: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
			k_line: ["1st", "23rd", "35th", "Union Square"]}

#Get start line from user
puts "What line are you starting from? [n/l/s/k]"
start_line = gets.chomp
	#Make sure the start line is a line we service
	until start_line == "n" || start_line == "l" || start_line == "s" || start_line == "k"
		puts "I'm sorry, but we don't service that line"
		puts "What line are you starting from? [n/l/s/k]"
		start_line = gets.chomp
	end

	#Map string values to keys in the hash
	case start_line
	when "n"
		start_line = subway[:n_line]
	when "l"
		start_line = subway[:l_line]
	when "s"
		start_line = subway[:s_line]
	when "k"
		start_line = subway[:k_line]
	end

#Get start station from user
puts "What station would you like to start from?"
puts "Your options are:"
start_line.each do |val| print "#{val}   " end #Print a list of stations for users to choose from
puts ""
start_station = gets.chomp

	#Make sure start is a station on that line
	until start_line.include?(start_station)
		puts "I don't see that station!"
		puts "Your options are:"
		start_line.each do |val| print "#{val}   " end
		puts ""
		start_station = gets.chomp
	end

start_i = start_line.index(start_station)

#Get stop line from user
puts "What line are you stopping at? [n/l/s/k]"
stop_line = gets.chomp
	#Make sure the stop line is a line we service
	until stop_line == "n" || stop_line == "l" || stop_line == "s" || stop_line == "k"
		puts "I'm sorry, but we don't service that line"
		puts "What line are you starting from? [n/l/s/k]"
		stop_line = gets.chomp
	end

	case stop_line
	when "n"
		stop_line = subway[:n_line]
	when "l"
		stop_line = subway[:l_line]
	when "s"
		stop_line = subway[:s_line]
	when "k"
		stop_line = subway[:k_line]
	end

#Get stop station from user
puts "What station would you like to stop at?"
puts "Your options are:"
stop_line.each do |val| print "#{val}   " end #print a list of stations for the user to choose from
puts ""
stop_station = gets.chomp
	
	#Make sure stop is a station is on that line
	until stop_line.include?(stop_station)
		puts "I don't see that station!"
		puts "Your options are:"
		stop_line.each do |val| print "#{val}   " end
		puts ""
		stop_station = gets.chomp
	end

stop_i = stop_line.index(stop_station)

#If the lines and stops are the same, then you go nowhere!
if start_line == stop_line && start_station == stop_station
	puts "You're already at #{start_station}!"

#If the lines are the same, just do a count of how many stops from one station to the next.
elsif start_line == stop_line
	stop_count = count_stops(start_i, stop_i)
	stop_message(stop_count, start_station, stop_station)

#If the lines are different, but the start or end is "Union Square", then the line is irrelevant.
#All lines go to "Union Square"
#So, to save trouble, just set the lines to be eqaul to one another
elsif start_station != stop_station && (start_station == "Union Square" || stop_station == "Union Square")
	if stop_station == "Union Square"
		stop_line = start_line
		stop_i = stop_line.index(stop_station)
	elsif start_station == "Union Square"
		start_line = stop_line
		start_i = start_line.index(start_station)
	end

	stop_count = count_stops(start_i, stop_i)
	stop_message(stop_count, start_station, stop_station)

#If the train goes to/from the N Line to the K Line, or to/from the S Line to the K Line, you can transfer at 23rd or at Union Square
#Check to see which route is fatest, and give the use the number of stations, as well as the transfer point
elsif (start_line == subway[:n_line] || stop_line == subway[:n_line]) && (start_line == subway[:k_line] || stop_line == subway[:k_line]) || (start_line == subway[:s_line] || stop_line == subway[:s_line]) && (start_line == subway[:k_line] || stop_line == subway[:k_line])
	#Check the stop count transferring at "Union Square"
	start_union_i = start_line.index("Union Square") #Find the index of "Union Square" in the start array
	first_leg = count_stops(start_i, start_union_i) #Compare the start to "Union Square"
	
	stop_union_i = stop_line.index("Union Square") #Find the index of "Union Square" in the stop array
	second_leg = count_stops(stop_union_i, start_i) #Compare the stop to "Union Square"

	stop_count_union = first_leg + second_leg #Add the stop counts together for "Union Square"

	#Check the stop count transferring at "23rd"
	start_union_i = start_line.index("23rd") #Find the index of "23rd" in the start array
	first_leg = count_stops(start_i, start_union_i) #Compare the start to "23rd"
	
	stop_union_i = stop_line.index("23rd") #Find the index of "23rd" in the stop array
	second_leg = count_stops(stop_union_i, start_i) #Compare the stop to "23rd"

	stop_count_23 = first_leg + second_leg #Add the stop counts together for "23rd"

	#Check which stop count is shorter. The traveler should take the shortest path!
	if stop_count_23 < stop_count_union
		stop_message(stop_count_23, start_station, stop_station)
		puts "Be sure to transfer at 23rd!"
	elsif stop_count_union < stop_count_23
		stop_message(stop_count_union, start_station, stop_station)
		puts "Be sure to transfer at Union Square!"
	end

#If the lines are different (and can't transfer at 23rd), add together their distance from "Union Square"
else
	#Find the index of "Union Station" in the start array
	#Compare the start to "Union Square"
	start_union_i = start_line.index("Union Square")
	first_leg = count_stops(start_i, start_union_i)

	#Find the index of "Union Station" in the stop array
	#Compare the stop to "Union Square"
	stop_union_i = stop_line.index("Union Square")
	second_leg = count_stops(stop_union_i, start_i)

	#Add the stop counts together and print a message
	stop_count = first_leg + second_leg
	stop_message(stop_count, start_station, stop_station)
end



