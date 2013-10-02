things.rb
require "sinatra"
require "sinatra/reloader"

get "/things" do
	#show a lis of things
end

post "/things" do
	#create a thing with params
	#paramas[:name], params[:author]
	#will do the same thing more than once
end

get "/things/:id" do
	#look up a thing and show it to the user
	#ONLY SHOW THINGS HERE
end

put "/things/:id" do
	#look up a thing by id
	#update it from params
	#does the same thing over and over
	redirect "/things/#{params[:id]}"
end

delete "/things/:id" do
	#destroy thing by id
	#does the same thing over and over
end
