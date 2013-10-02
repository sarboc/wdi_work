require 'yahoofinance'
require 'sinatra'
require 'sinatra/reloader'

get "/" do
	if params[:s] == nil
		erb :form
	elsif params[:s] == ""
		@message = "You didn't enter a symbol!"
		erb :no_results
	else
		stock_symbol = params[:s].upcase
		quote =  YahooFinance.get_standard_quotes (stock_symbol)
		stock_info = quote[stock_symbol]
		@symbol = stock_info.symbol
		@name = stock_info.name
		@price = stock_info.lastTrade
		@change = stock_info.change[0]

		if @price == 0.0
			@message = "I don't know that symbol!"
			erb :no_results
		else
			@pos = "pos"
			@neg = "neg"
			erb :results
		end
	end
end


