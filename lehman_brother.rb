def trader_du_dimanche(array)
  day_to_buy = array.min
  position_day_to_buy = array.index(array.min) + 1
  day_to_sell = (array[position_day_to_buy .. (array.index(array.last))]).max
  position_day_to_sell = array.index(day_to_sell) + 1
  puts "Buy at day #{position_day_to_buy} at the price of #{day_to_buy}"
  puts"Sell at day #{position_day_to_sell} at the price of #{day_to_sell}"
end

#trader_du_dimanche([17,3,6,9,15,8,6,1,10])

def compute_benefit(array)
  r = 0
  length_array = array.length - 1
  array.each_cons(2){ |i|
    p i
}
end

compute_benefit ([17,3,6,9,15,8,6,1,10])