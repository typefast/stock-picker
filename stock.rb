
def stock_picker(array)
  best_profit = {}
  array.each_with_index do |buy_day, buy_index| #loop through the array value and index
    array.each_with_index do |sell_day, sell_index|
      if sell_index > buy_index #check if there is an increase in price
        best_profit[sell_day - buy_day] ||= []
        best_profit[sell_day - buy_day] << [buy_day, sell_day] # buy and sell days added to values/profits
      end
    end
  end
  p best_profit.max_by { |profit, purchase_days| profit }
end

stock_picker([17,3,6,9,15,8,6,1,10])

