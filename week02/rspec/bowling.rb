class Bowling
	attr_reader :score, :rolls

	def initialize
		@score = 0
		@bonus = 0
		@pins_this_frame = 0
		@turn = 0
	end

	def roll(pins)
		if @turn == 2
			@turn = 0
			@pins_this_frame = 0
		end

		@turn += 1
		@score += pins
		@roll_minus_2 = @roll_minus_1
		@roll_minus_1 = pins

	end

end

class Bonus
	attr_accessor :bonus
end
