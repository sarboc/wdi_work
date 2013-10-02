class Building

	attr_reader :apartments, :amenities
	attr_accessor :address, :neighborhood

	def initialize(address, neighborhood)
		@address = address
		@neighborhood = neighborhood
		@apartments = []
		@amenities = []
	end

	def add_apartment(apartment)
		@apartments << apartment
	end

	def add_amenities(amenity)
		@amenities << amenity
	end

	def remove_amenities(amenity)
		@amenities.delete(amenity)
	end

end

building = Building.new("1234 Nowhere Lane", "Mission")
p building.apartments

building.add_apartment("A")
building.add_apartment("B")
p building.apartments

building.add_amenities("pool")
p building.amenities

building.remove_amenities("pool")
p building.amenities