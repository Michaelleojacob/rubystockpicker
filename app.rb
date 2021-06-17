def stockpicker(*nums)
    max_profit = []
    all_assorted_buys_sells_and_profits = []
    day_to_buy_day_to_sell = []
    nums.map do |i|
        i.map do |j|
            jindex = i.index(j)
            i[jindex..-1].map do |item| 
                profit = item - j
                itemindex = i.index(item)
                all_assorted_buys_sells_and_profits.push([item, itemindex, j, jindex, profit])
            end
        end
        all_assorted_buys_sells_and_profits.map{|i| max_profit.push(i[4])}
        index_of_max = max_profit.index(max_profit.max)
        winning_outcome = all_assorted_buys_sells_and_profits[index_of_max]
        day_to_buy_day_to_sell = winning_outcome[3], winning_outcome[1]
    end
    day_to_buy_day_to_sell
end

p stockpicker([17,3,6,9,15,8,6,1,10])

