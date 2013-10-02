# Instructors for the quiz are written inline.
require 'pry'
# This Exercise is about nested arrays and hashes
# Questions are at the bottom of the code
 
# Snow White is a princess
# http://en.wikipedia.org/wiki/Snow_White
# http://en.wikipedia.org/wiki/Snow_White_(Disney)
snow_white = {
  name: 'Snow Motherfuckin White',
  occupations: [
    'Princess',
    'Daughter',
    'Apple Connoisseur'
  ]
}
 
# Snow White had seven dwarves
d1 = { :name => "Bashful", :age => 14 }
d2 = { :name => "Doc", :age => 56 }
d3 = { :name => "Dopey", :age => 9 }
d4 = { :name => "Grumpy", :age => 32 }
d5 = { :name => "Happy", :age => 8 }
d6 = { :name => "Sleepy", :age => 21 }
d7 = { :name => "Sneezy", :age => 18 }
 
# Once upon a time, they lived in different area codes
snow_white[:dwarves] = {
  '302' => [d3],
  '347' => [d1, d2, d4],
  '212' => [d6, d7],
  '617' => [d5]
}
 
# Questions: Write a line of code for each
# Example: How many occupations does Snow White have?
# $ snow_white[:occupations].count => 3
# binding.pry
 
# What number job is 'Daughter'?
puts
puts "What number job is Daughter?"

daughter = snow_white[:occupations].index("Daughter") + 1
puts "Daughter is job number #{daughter}"

i = 0

while i < snow_white[:occupations].count
  puts "Daughter is job number #{i+1}." if snow_white[:occupations][i] == "Daughter"
  i += 1
end

# How many area codes does Snow White have dwarves in?
puts
puts "How many area codes do the dwarves live in?"
area_code_count = snow_white[:dwarves].count
puts "Snow White's dwarves live in #{area_code_count} area codes."

# How many dwarves does Snow White have?
puts
puts "How many dwarves does Snow White have?"

dwarves = []

snow_white[:dwarves].each do |k, v| #iterate through the dwarves area code hash
  v.each do |v| #some values are arrays, so iterate through them as well
    unless dwarves.include?(v) #if dwarf already exists, don't add him to the array
      dwarves << v #if dwarf doesn't exist, add him to the array
    end
  end
end

dwarves_count = dwarves.count
puts "Snow White has #{dwarves_count} dwarves."

# How many dwarves does Snow White have in 617?
puts
puts "How many dwarves does Snow White have in ara code 617?"
area_617 = snow_white[:dwarves]["617"].count
puts "Snow White has #{area_617} dwarves in area code 617."

# Print out all Snow White's dwarves names
puts 
puts "What are the dwarves names?"
snow_white[:dwarves].each do |k, v|
  v.each do |v|
    puts v[:name]
  end
end

#Bonus Questions

#create a new array with all the dwarves
dwarves = [d1, d2, d3, d4, d5, d6, d7]

#create a new array of dwarves in area code "617"
dwarves_617 = []
snow_white[:dwarves].each do |k , v|
  if k == "617"
    dwarves_617 << v
  end
end

#create a new array with every third dwarf
third_dwarves = []
i = 0

while i < dwarves.length
  third_dwarves << dwarves[i]
  i += 3
end

p dwarves
p dwarves_617
p third_dwarves