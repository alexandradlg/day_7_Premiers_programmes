def help_me_trade

    puts "----- Pour les taders du dimanche -----"
    puts "Prix constatés par jour sur 10 jours : "
    puts "jour 1 : "
    day1_price = gets.chomp.to_i
    puts "jour 2 : "
    day2_price = gets.chomp.to_i
    puts "Jour 3 : "
    day3_price = gets.chomp.to_i
    puts "jour 4 : "
    day4_price = gets.chomp.to_i
    puts "jour 5 : "
    day5_price = gets.chomp.to_i
    puts "Jour 6 : "
    day6_price = gets.chomp.to_i
    puts "jour 7 : "
    day7_price = gets.chomp.to_i
    puts "jour 8 : "
    day8_price = gets.chomp.to_i
    puts "Jour 9 : "
    day9_price = gets.chomp.to_i
    puts "Jour 10 : "
    day10_price = gets.chomp.to_i

    array_of_prices = [day1_price, day2_price, day3_price, day4_price, day5_price, day6_price, day7_price, day8_price, day9_price, day10_price ] 
    array_of_days = ["day 1", "day 2", "day 3", "day 4", "day 5", "day 6", "day 7", "day 8", "day 9", "day 10"]

    a = 0
    b = 1

    array_of_days.each { |day|
        while b == 9 && a == 9  do            
            benefice = array_of_prices[a] - array_of_prices[b]
            # max_benef = benefice.max
        end
     a +=1
        # print max_benef
    }
    print benefice
     
    # hash_of_prices = Hash.new

    
    #     hash_of_prices = Hash ["day 1" => day1_price]
    #     hash_of_prices = Hash ["day 2" => day2_price]
    #     hash_of_prices = Hash ["day 3" => day4_price]
    #     hash_of_prices = Hash ["day 4" => day4_price]
    #     hash_of_prices = Hash ["day 5" => day5_price]
    #     hash_of_prices = Hash ["day 6" => day6_price]
    #     hash_of_prices = Hash ["day 7" => day7_price]
    #     hash_of_prices = Hash ["day 8" => day8_price]
    #     hash_of_prices = Hash ["day 9" => day9_price]  
    #     hash_of_prices = Hash ["day 10" => day10_price]

    # # puts hash_of_prices.max_by{day, price}
    # puts hash_of_prices

end

help_me_trade
