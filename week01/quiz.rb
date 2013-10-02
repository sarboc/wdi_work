                                                             
#     ,o888888o.     8 8888      88  8 8888  8888888888',8888' 
#  . 8888     `88.   8 8888      88  8 8888         ,8',8888'  
# ,8 8888       `8b  8 8888      88  8 8888        ,8',8888'   
# 88 8888        `8b 8 8888      88  8 8888       ,8',8888'    
# 88 8888         88 8 8888      88  8 8888      ,8',8888'     
# 88 8888     `8. 88 8 8888      88  8 8888     ,8',8888'      
# 88 8888      `8,8P 8 8888      88  8 8888    ,8',8888'       
# `8 8888       ;8P  ` 8888     ,8P  8 8888   ,8',8888'        
#  ` 8888     ,88'8.   8888   ,d8P   8 8888  ,8',8888'         
#     `8888888P'  `8.   `Y88888P'    8 8888 ,8',8888888888888  

#     
# This is our first week's !quiz Let's find out what we know.
# 

# The ideal range of your motor cycle speed 20 - 55. Over 55 is SCAREE!
# Check if your moto_speed is within that range using boolean (&&, ||)
# operators and comparison operators (== =< >= !=)

# if your moto_speed variable is in the right range print out a good
# message, aka "Wheee!" Otherwise print out an appropriate response.
# Your code goes below:

if mph >= 20 && mph <= 55
  puts "Wheeeee!"
elsif mph < 20
  puts "This is kind of boring. Go faster!"
elsif mph > 55
  puts "SCAREE! Slow down!"
end

# Make a method that checks your moto speed when called

def check_speed (mph)
  if mph >= 20 && mph <= 55
    puts "Wheeeee!"
  elsif mph < 20
    puts "This is kind of boring. Go faster!"
  elsif mph > 55
    puts "SCAREE! Slow down!"
  end
end

check_speed(45)


# Make a method to start your bike! It should print out "vrooom!"
# when it's called

# your code below:

def start_bike
  puts "vroom!"
end

# You're the leader of the pack. 
# Create an Array of 3 motorcycle makes!

my_convoy = ["Harley", "Honda", "Kawasaki"]

# Loop through your convoy and print out each motorcycle's make
# Your code below:

my_convoy.each do |make| puts make end

# You need to keep track of your gang. 
# Create 3 separate Hashes containing riders' info. like so:
# fred = { name, helmet, height }
# Then a larger Hash containing all riders
# my_gang = {rider hashes}

my_gang = {
  fred: {
      name: "Fred",
      helmet: "Blue",
      height: "medium"
  },
  sally: {
    name: "Sally",
    helmet: "Pink",
    height: "short"
  },
    sam: {
    name: "Sam",
    helmet: "orange",
    height: "tall"
  }
}

# Loop through your gang and print out each rider's 
# name & helmet color using a block. Your code below:
my_gang.each do |key, value|
  puts "#{my_gang[key][:name]}'s helmet is #{my_gang[key][:helmet]}"
end


# Now for each rider add their motorcycle to their Hash, 
# assume they are in the same order as your Array
# use a loop. Your code below:

i = 0
my_gang.each do |key, value|
  my_gang[key][:motorcycle] = my_convoy[i]
  i += 1
end

# Define a class to represent each gang member 
# It should include methods to set their name and motorcyle make
# When say_name(name) is called the rider's name is printed out

class Rider
  attr_accessor :name, :moto_model

  def initialize(name, moto_model)
    @name = name
    @moto_model = moto_model
  end

  def say_name(rider)
    puts "My name is #{rider}!"
  end
end



# A fellow student is noticing that instances of his new Foo class are missing
# their @bar instance variable
class Foo
  attr_reader :bar

  def initialize(bar)
    @bar = bar
  end
end

foo = Foo.new('value of bar')
foo.bar # TODO value is missing!

# Fix this code so it prints “hello”
class Bar
  def say_something
    puts 'hello'
  end
end

bar = Bar.new
bar.say_something

# Final Challenge:
# 1. initialize 3 new instances of class Rider
joe = Rider.new("Joe", "Harley")
sally = Rider.new("Sally", "Honda")
sam = Rider.new("Sam", "Kawasaki")

# 2. add these to a new Hash
riders = {
  "Joe" => joe,
  "Sally" => sally,
  "Sam" => sam
}

# 3. loop through the riders Hash and call say_name for each rider.
riders.each do |key, value| value.say_name(key) end
