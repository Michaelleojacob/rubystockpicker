require "pry"
# prices = [2,67,41,23,7,64,11,16,20,14,88,16,22,13,17,3,4,35,26,12]
prices = [17,3,6,9,15,8,6,1,10]

def stockpicker(*nums)
    all_assorted_buys_sells_and_profits = []
    max_profit = []
    nums.each_with_index.map do |i, i_index|
        #i only has one item, an array. p i_index will only give 0.
        # p i_index
        i.each_with_index.map do |j, j_index|
            # p j_index
            jindex = i.index(j)
            # p "j = #{j} index of #{jindex}"
            # p "i = #{i}"
            i[jindex..-1].each_with_index.map do |item, item_index| 
                profit = item - j
                in_english = "#{item} @ #{item_index} - #{j} @ #{j_index} = #{profit}"
                # j index is correct because item index starts from i.index(j)
                p "#{j} @ #{j_index}"
                # p "#{item} @ #{item_index}"
                # p in_english
                all_assorted_buys_sells_and_profits.push([item, j, profit])
            end
        end
        # p all_assorted_buys_sells_and_profits
        all_assorted_buys_sells_and_profits.map do |i|
            max_profit.push(i[2])
        end
        index_of_max = max_profit.index(max_profit.max)
        # p index_of_max
        # p max_profit.max
        winning_day_to_buy_and_sell = all_assorted_buys_sells_and_profits[index_of_max]
        # winning_day_to_buy_and_sell.pop
        # p winning_day_to_buy_and_sell
    end
end

stockpicker(prices)






#! pretty decent output. pretty close to answer I feel
require "pry"
# prices = [2,67,41,23,7,64,11,16,20,14,88,16,22,13,17,3,4,35,26,12]
prices = [17,3,6,9,15,8,6,1,10]

def stockpicker(*nums)
    max_profit = []
    nums.map do |i| 
        i.map do |j|
            jindex = i.index(j)
            # p "j = #{j} index of #{jindex}"
            # p "i = #{i}"
            i[jindex..-1].map do |item| 
                profit = item - j
                p profit
                max_profit.push(profit)
            end
        end
        p max_profit.max
    end
end

stockpicker(prices)




#! interesting outcome but does not work.
def stockpicker(*nums)
    nums.map do |i| 
        i.map do |j|
            p "j = #{j}"
            p "i = #{i}"
            i.each{|item| p item - j}
        end
    end
end

def stockpicker(*nums)
    nums.map do |i|
        number_to_compare = i.shift
        number_to_compare
        p number_to_compare
        nums.map do |j|
            j.each do |k|
                profit = k - number_to_compare
                p profit
            end
        end
    end
end