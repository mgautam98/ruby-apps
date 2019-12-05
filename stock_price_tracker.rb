require 'stock_quote'

name = gets.chomp


def get_current_price(name)
    return StockQuote::Stock.quote(name).last_trade_price_only
end

get_current_price(name)