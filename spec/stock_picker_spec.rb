require_relative '../lib/stock_picker'

RSpec.describe 'stock_picker' do
    let (:array_of_stock_prices) do
        [17,3,6,9,15,8,6,1,10]
    end

    it 'it returns an array that contains sell_dat and Buy_dates that give the maximum profit' do
        expect(stock_picker(array_of_stock_prices)).to eq([1,4])
    end
end
