```
known   : 
    array_of_stock_prices
unknown : 
    array_of_best_days [by, sell]
```
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
    best_days
end


# Simulated tests:
array_of_stock_prices = [17,3,6,9,15,8,6,1,10]
# indexed_of_array_prices = [0, 1, 2, 3, 4, 5, 6, 7, 8]
print stock_picker(array_of_stock_prices)
# should print: [1,4]