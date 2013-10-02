STORAGE = {}

if STORAGE.empty?
	puts "Nobody has signed the guest book yet. :-("
else
	STORAGE.each do |name, entry|
		puts "#{name} wrote: #{entry}"
		end
end


# html query strings: http://localhost:4567/debug/you/me/him?wdi=yes+please&youmama=janine
# start string with ?
# assign variables with =
# separate variables with &

# require 'sinatra'
# require "sinatra/reloader"

# get '/hi' do
#   "Hello world!"
# end


# get '/say/:first' do
# 	@name = params[:first].capitalize
# 	erb :hello
# end

# get '/calculator/:operator/*' do

# 	values = params[:splat][0].split "/"
# 	values = values.map { |number| number.to_f }

# 	case params[:operator].downcase
# 	when "add"
# 		@answer = values.reduce(:+)
# 		@answer_type = "sum"
# 		# "The sum is #{answer}"
# 	when "subtract"
# 		@answer = values.reduce(:-)
# 		@answer_type = "difference"
# 		# "The difference is #{answer}"
# 	when "multiply"
# 		@answer = values.reduce(:*)
# 		@answer_type = "product"
# 		# "The product is #{answer}"
# 	when "divide"
# 		@answer = values.reduce(:/)
# 		@answer_type = "quotient"
# 		# "The quotient is #{answer}"
# 	end

# 	erb :calculator
# end

# get '/debug/*' do
# 	erb :debug
# end



# get '/more/:operator/*' do
# 	params.inspect
# end

# not_found do
# 	status 404
# 	"page not found"
# end

# def fib(num)
# 	if num == 0
# 		0
# 	elsif num == 1
# 		puts 1
# 	else fib(num-1) + fib(num-2)
# 	end
# end

# def fib(num)
# 	n == 0 || n == 1 ? (return n) : fib(n - 1) + fib(n - 2)
# end

# fib(8)