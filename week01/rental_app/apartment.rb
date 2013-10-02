class Apartment

	attr_accessor :rent, :available, :tenant
	attr_reader :sqft, :rooms, :bathrooms

	def initialize(sqft, rooms, bathrooms, rent, available=false, tenant=nil)
		@sqft = sqft
		@rooms = rooms
		@rent = rent
		@available = true
		@available = available
		@tenant = tenant
	end

	def raise_rent(percentage)
		@rent += percentage.to_f / 100 * @rent
	end

	def move_in(tenant)
		@tenant = tenant
		@available = false
	end

	def move_out
		@tenant = nil
		@available = true
	end

end

apt = Apartment.new(2000, 2, 1, 1350)

apt.raise_rent(50)
puts "Your new rent is $#{apt.rent.to_i} per month."

apt.move_in("Jackie")
p apt