def stockpicker(*nums)
    #initialize my different holding arrays
    max_profit = []
    all_assorted_buys_sells_and_profits = []
    day_to_buy_day_to_sell = []

    #looping over each of the numbers given to stockpicker, and then splitting them into two
    #separate iterations/loops. i and j
    nums.map do |i|
        i.map do |j|
            
            #this bit of code is going to take the current j iteration 
            #item will then start from where j is in j's current iteration.
            # basically if j = [1,2,3,4][iteration 2], item will START from [iteration 2]
            #example: j = [1,2,3,4][2] #=> j = 3
            #item = j[2] => item =  [3,4]
            jindex = i.index(j)
            i[jindex..-1].map do |item|
                profit = item - j
                itemindex = i.index(item)
                all_assorted_buys_sells_and_profits.push([item, itemindex, j, jindex, profit])
            end
        end

        #here we are going to sort the all_assorted_buys_sells_and_profits array
        #by highest profit. profit will always be arr[4]
        all_assorted_buys_sells_and_profits.map{|i| max_profit.push(i[4])}
        
        #these two lines of code find the highest profit.
        #winning outcome is the entire item that is the winning days to buy and sell
        index_of_max = max_profit.index(max_profit.max)
        winning_outcome = all_assorted_buys_sells_and_profits[index_of_max]

        #this is separating just the exact items we want which are which days to buy and sell on.
        day_to_buy_day_to_sell = winning_outcome[3], winning_outcome[1]
    end
    day_to_buy_day_to_sell
end

p stockpicker([17,3,6,9,15,8,6,1,10])

