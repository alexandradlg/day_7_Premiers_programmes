<<<<<<< HEAD
# def trader_du_dimanche(array)
#   day_to_buy = array.min
#   position_day_to_buy = array.index(array.min) + 1
#   day_to_sell = (array[position_day_to_buy .. (array.index(array.last))]).max
#   position_day_to_sell = array.index(day_to_sell) + 1
#   puts "Buy at day #{position_day_to_buy} at the price of #{day_to_buy}"
#   puts"Sell at day #{position_day_to_sell} at the price of #{day_to_sell}"
# end
def stock_picker(prices)
  # On pose toutes les variables dont on va avoir besoin à 0
  day_to_buy = 0
  day_to_sell = 0
  profit = 0
  sell_day_tracker = 0
  #each_with_index permet de récupérer l'index et la valeur d'un élément de l'array en une fois
  prices.each_with_index do |buy_day, index|

    break if index == prices.length - 1 #Pour boucler jusqu'au dernier index de l'array, sinon prices.length est plus grand que index
    sell_day_tracker += 1 # on track le nombre de jour. On commence direct à 1 car l'index commence à 0
    prices[sell_day_tracker..prices.length-1].each do |sell_day| #On boucle sur chaque valeur de l'array. On comment à 1, car on ne peut acheter avant l'index[Ø]
      if sell_day - buy_day > profit #La c'est la magie, on regarde si le profit calculer au fur et à mesure de la boucle à augmenté ou non.
      #Si c'est le cas on met à jour les cariables pour récupérer les informations après.
      profit = sell_day - buy_day
      day_to_buy = prices.index(buy_day) #on récupère bien l'index buy_day que l'on avait plus haut.
      day_to_sell = prices.index(sell_day) ##on récupère bien l'index sell_day que l'on a plus haut.
      end
    end
  end
  p [day_to_buy, day_to_sell] #On affiche les jours achat / vente en array
  puts "Your profit is $#{profit}. (#{prices[day_to_sell]} - #{prices[day_to_buy]})" #Les price[x] mettent la valeur qui correspondent à l'indice
end

stock_picker([17,3,6,9,15,8,6,1,10])



  
=======
>>>>>>> 05bd90af9dfe6dc0f440a18b5d006f7e745d36ea
