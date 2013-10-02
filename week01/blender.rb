class Blender
  attr_accessor :smoothie_ingredients, :smoothie_flavors, :flavor, :description

  def initialize
    @smoothie_flavors = {
      "everything" => Everything,
      "fruit" => Fruit,
      "seeds" => Seeds,
      "vegetable" => Vegetable,
      "dessert" => Dessert,
      "none" => None
    }
  end

  def print_array(array)
    array.each do |item| print "'#{item}'   " end
  end

  def get_valid_response(array)
    print_array(array)
    puts
    response = gets.chomp.downcase
    until array.include?(response)
      puts "Sorry! That wasn't a valid option. Please choose from the following selections:"
      print_array(array)
      response = gets.chomp.downcase
    end
    response
  end    

  def start_blender
    puts "What flavor smoothie would you like to make?"
    flavor = get_valid_response(smoothie_flavors.keys)
    smoothie_flavors[flavor].new.turn_on
  end

  def turn_on
    puts
    puts "Great! Ready to make a #{flavor} smoothie"

    puts "You need to turn the blender on first. Would you like to turn it on now?"
    on = get_valid_response(["yes", "no"])

    if on == "yes"
      make_smoothie
    else
      puts
      puts "You never started the blender. No smoothie for you!"
      puts
    end
  end

  def make_smoothie
    ingredients = smoothie_ingredients.keys
    no_air = []
    ingredients.each do |item| no_air << item.split(" ") end
    ingredients = no_air.flatten

    # ingredients.sort {|a, b| a.length <=> b.length}
    # test_length = ingredients[0].length

    lengths = []
    ingredients.each do |item| lengths << item.length end
    length = lengths.max
    count = ingredients.count

    smoothie = []

    length.times do |item_index|
      count.times do |ingredients_index|
        smoothie << ingredients[ingredients_index][item_index] if ingredients[ingredients_index][item_index]
      end
    end
    serve_smoothie(smoothie)
  end

  def serve_smoothie(smoothie)
    glass = []
    letters_per_line = 5
    i = 0

    while i < smoothie.count
      line = ""
      letters_per_line.times do |x| line << smoothie[i + x] if smoothie[i + x] end
      glass << line
      i += letters_per_line
    end

    top = ""
    (letters_per_line + 2).times do top << "-" end 

    puts
    puts "Here's your smoothie!"
    puts

    puts "     //"
    puts "    //"
    puts "   //"
    puts "  ||"
    puts "  ||"
    puts "  ||"
    print "#{top}\n"
    glass.each do |line|
      if line.length < letters_per_line
        spaces = ""
        ((letters_per_line) - (line.length)).times do spaces << " " end
        print "|" + spaces + line + "|\n"
      else print "|#{line}|\n"
      end
    end
    print "#{top}\n"
    puts
    puts description
    puts
  end

end

class Everything < Blender
  def initialize
    @smoothie_ingredients = {
    'flax seeds' => '1 tbsp',
    'chia seeds' => '1 tbsp',
    'coconut flakes' => '1 tbsp',
    'spirulina' => '1 tsp',
    'pumpkin seeds' => '1 tbsp',
    'oatmeal' => '1/4 cup',
    'coco powder' => '1 tbsp',
    'peanut butter' => '1 tbsp',
    'almonds' => '1/4 cup',
    'walnuts' => '1/4 cup',
    'spinach' => '1/4 cup',
    'greek yogurt' => '1/4 cup',
    'nutrional yeast' => '1 tbsp',
    'brussel sprouts' => '1/4 cup',
    'asparagus' => '1/4 cup',
    'kale' => '1/4 cup',
    'brocoli rabe' => '1/4 cup',
    'blue berries' => '1/4 cup',
    'chopped banana' => '1/2 cup',
    'straw berries' => '1/4 cup',
    'mango' => '1/4 cup',
    'hemp milk' => '1 cup'
    }
    @description = "Man, that's thick!"
  end
end

class Fruit < Blender
  def initialize
    @smoothie_ingredients = {
    'greek yogurt' => '1/4 cup',
    'blue berries' => '1/4 cup',
    'chopped banana' => '1/2 cup',
    'straw berries' => '1/4 cup',
    'mango' => '1/4 cup'
    }
    @description = "Fruitilicious!"
  end
end

class Seeds < Blender
  def initialize
    @smoothie_ingredients = {
    'flax seeds' => '1 tbsp',
    'chia seeds' => '1 tbsp',
    'pumpkin seeds' => '1 tbsp',
    'greek yogurt' => '1/4 cup'
    }
    @description = "As seedy as 6th street!"
  end
end

class Vegetable < Blender
  def initialize
    @smoothie_ingredients = {
    'spinach' => '1/4 cup',
    'brussel sprouts' => '1/4 cup',
    'asparagus' => '1/4 cup',
    'kale' => '1/4 cup'
    }
    @description = "Cows love it!"
  end
end

class Dessert < Blender
  def initialize
    @smoothie_ingredients = {
    'coconut flakes' => '1 tbsp',
    'oatmeal' => '1/4 cup',
    'coco powder' => '1 tbsp',
    'peanut butter' => '1 tbsp',
    'almonds' => '1/4 cup',
    'walnuts' => '1/4 cup',
    'greek yogurt' => '1/4 cup',
    'hemp milk' => '1 cup'
    }
    @description = "Dessert of champions!"
  end
end

class None < Blender
  def initialize
  end

  def turn_on
    puts
    puts "Then why did you start a smoothie program?"
    puts "No smoothie for you!"
    puts
  end
end

Blender.new.start_blender

