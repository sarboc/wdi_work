require 'sinatra'
require 'sinatra/reloader'
require 'time'
 
STORAGE = {}
 
get '/' do #This is the route for the homepage
  #This should display all the messages in the STORAGE hash.
  #If it is empty it should display the message "There are no messages!"
  # STORAGE.empty? ? (erb :empty) : (erb :home)
  erb :home
end
 
get '/sign' do
  # When users go to this link it should have a form that takes in their name
  # When they click the submit button it should send them to the '/post' path
  erb :sign
end
 
post '/post' do
  #The message sent through the params hash should be stored in the STORAGE hash
  #Then the use should be redirected to the home page
  name = params[:name]
  comment = params[:comment]
  time = Time.now
  STORAGE[time] = {name: name, comment: comment}
  redirect '/'
end