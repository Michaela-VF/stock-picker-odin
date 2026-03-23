
# known   : 
#     array_of_stock_prices
# unknown : 
#     array_of_best_days [by, sell]

def stock_picker(array_of_stock_prices)

    higher_profit = 0
    best_days = []

    array_of_stock_prices.each_with_index do |buy_price, buy_day| # array's (values - index)
        array_of_stock_prices.each_with_index do |sell_price, sell_day| # array's (values - index)
            next if sell_day <= buy_day
            
            profit = sell_price - buy_price

            if profit > higher_profit
                higher_profit = profit
                best_days = [buy_day, sell_day]
            end
        end
    end
    print "Buy on day #{best_days[0]} and sell on day #{best_days[1]} for a maximum profit of $#{higher_profit}!"
    best_days
end
