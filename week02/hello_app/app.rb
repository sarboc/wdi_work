require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :form
end

get '/hello' do
	@first_name = params[:first_name].capitalize
	erb :result
end
