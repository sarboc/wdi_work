require 'yahoofinance'
require 'sinatra'
require 'sinatra/reloader'

STOCKS = {}
MESSAGE = "Add another symbol to the stock ticker!"

get "/" do
	erb :form
end

post "/post" do
	if params[:s] == ""
		MESSAGE = "You didn't enter a symbol!"
	else
		stock_symbol = params[:s].upcase
		quote =  YahooFinance.get_standard_quotes (stock_symbol)
		stock_info = quote[stock_symbol]
		symbol = stock_info.symbol
		name = stock_info.name
		price = stock_info.lastTrade
		change = stock_info.change[0] == "+" ? "pos" : "neg"
		if price == 0.0
			MESSAGE = "I don't know that symbol!"
		else
			STOCKS[symbol] = {
			symbol: symbol,
			name: name,
			price: price,
			change: change
			}
			MESSAGE = "Your stock has been added to the ticker!"
		end
	end
	redirect "/"
end
