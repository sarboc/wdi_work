require "./person"

describe Person do
	it "should have a name" do
		person = Person.new
		person.name.should_not === nil
	end

	it "should be initialized with a name" do
		kyle = Person.new("kyle")
		jackie = Person.new("jackie")
		kyle.name.should == "kyle"
		jackie.name.should == "jackie"
	end
end