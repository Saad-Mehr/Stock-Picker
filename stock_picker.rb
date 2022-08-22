require 'pry-byebug'

def stock_picker(stock_prices)
    lowest_price = stock_prices[0]
    lowest_price_index = 0
    profit = 0
    highest_price_index = 0
    days = []
    stock_prices.each_with_index do |price, index|
        if price < lowest_price
            lowest_price = price
            lowest_price_index = index
        elsif price - lowest_price > profit
            profit = price - lowest_price
            highest_price_index = index
            days = [lowest_price_index, highest_price_index]
        end
    end

    return days
end