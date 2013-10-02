require "./bowling"

describe Bowling do
	describe "#score" do
		let(:game) {Bowling.new}
		# let(:perfect) {game = game.New
		# 				10.times roll(10)
		# 				game.score.should == 300}

		it "should start at 0" do
			game.score.should == 0
		end

		it "should be 5 if my first roll is a 5" do
			game.roll(5)
			game.score.should == 5
		end

		it "should be 10 if my first frame is a spare" do
			2.times {game.roll 5}
			game.score.should == 10
		end

		it "should be 20 if I roll three fives to start" do
			3.times {game.roll 5}
			game.score.should == 20
		end

		it "should be 24 if I roll 10, 3, 4" do
			game.roll(10)
			game.roll(3)
			game.roll(4)
			game.score.should == 24
		end
	end
end