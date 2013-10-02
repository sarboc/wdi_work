require 'sinatra'
require "sinatra/reloader"

get '/' do
	erb :main
end

get '/result' do
	@num1 = params[:number1].to_f
	@num2 = params[:number2].to_f
	operator = params[:operator]

	case operator
	when "add"
		@answer = @num1 + @num2
		@answer_type = "sum"
	when "subtract"
		@answer = @num1 - @num2
		@answer_type = "difference"
	when "multiply"
		@answer = @num1 * @num2
		@answer_type = "product"
	when "divide"
		@answer = @num1 / @num2
		@answer_type = "quotient"
	end
	erb :result
end