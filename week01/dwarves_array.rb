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
  '302' => [d3, d1, d2],
  '347' => [d1, d2, d4],
  '212' => [d6, d7, d5],
  '617' => [d5, d6, d2]
}

puts
puts "How many dwarves does Snow White have?"

dwarves = []

snow_white[:dwarves].each do |k, v|
  v.each do |v|
  	unless dwarves.include?(v)
  		dwarves << v
  	end
  end
end

dwarves_count = dwarves.count
puts "Snow White has #{dwarves_count} dwarves."