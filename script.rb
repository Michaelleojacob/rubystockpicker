require "pry"
# prices = [2,67,41,23,7,64,11,16,20,14,88,16,22,13,17,3,4,35,26,12]
prices = [17,3,6,9,15,8,6,1,10]

def stockpicker(*nums)
    all_assorted_buys_sells_and_profits = []
    max_profit = []
    nums.map do |i|
        i.map do |j|
            jindex = i.index(j)
            i[jindex..-1].map do |item| 
                profit = item - j
                itemindex = i.index(item)
                in_english = "#{item} @ #{itemindex} - #{j} @ #{jindex} = #{profit}"
                all_assorted_buys_sells_and_profits.push([item, itemindex, j, jindex, profit])
                all_assorted_buys_sells_and_profits
            end
        end
        all_assorted_buys_sells_and_profits.map do |i|
            max_profit.push(i[4])
        end
        index_of_max = max_profit.index(max_profit.max)
        winning_outcome = all_assorted_buys_sells_and_profits[index_of_max]
        # p winning_outcome
        day_to_buy_day_to_sell = []
        day_to_buy_day_to_sell.push(winning_outcome[3], winning_outcome[1])
        # p day_to_buy_day_to_sell
        day_to_buy_day_to_sell
    end
end

stockpicker(prices)
