class Person

	attr_accessor :first_name, :last_name, :email, :credit_score

	def initialize(first_name, last_name, email, credit_score)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@credit_score = credit_score
	end
end