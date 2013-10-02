require 'open-uri'
require 'json'

#original gist: https://gist.github.com/bridgpal/e032c851cebf6de1a968

# url = "https://gist.github.com/bridgpal/e032c851cebf6de1a968/raw/820ef8ca253e9aaf986c010e235ef1141564fedc/products.json"
url = File.open("products.json")
result = JSON.parse(open(url).read)

#Count total number of items
items_count = result["items"].count

#Get description for all eBay items
ebay_items = []

i = 0
items_count.times do |x|
	ebay_items << result["items"][x]["product"]["title"] if result["items"][x]["product"]["author"]["name"].include?("eBay")
end

#Get item 23
item23 = result["items"][23]["product"]["title"]

#Get info for items
items = []

items_count.times do |x|
	items << {
		product_name: result["items"][x]["product"]["title"],
		description: result["items"][x]["product"]["description"],
		price: result["items"][x]["product"]["inventories"][0]["price"],
		image_url: result["items"][x]["product"]["images"][0]["link"]
	}
end

#Print in a specific format
items.each do |x|
	print "#{x[:product_name]} - #{x[:price]} (#{x[:description]})"
	puts ""
end