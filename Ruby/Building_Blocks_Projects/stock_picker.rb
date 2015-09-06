#take each day
#find the day later in the array with the biggest difference
# do that for all numbers making sure to keep track of the biggest difference overall
#return two days that produce the biggest difference
#don't take last day.

def stock_picker(arr)
  buy = ""
  sell = ""
  biggest_difference = 0
  profit = 0
  arr.each_with_index do |day, index|
      #no days after last day so last day can't be the buy day
    if (day != arr[-1])
      #sell date must be after purchase date, therefore only want indicies after current
      future_date = (index +1)
      while future_date < arr.length
        profit = arr[future_date] - arr[index]
          if profit > biggest_difference
            buy = index
            sell = future_date
            biggest_difference = profit
          end
        future_date += 1
      end
     end
  end
  [buy,sell]
end
