#We take the sum function we did in calculator.rb
def sum(array)
  array.reduce(0, :+)
end
#We define what is a multiple of 3
def multiple_3 (n)
  (n % 3 == 0)? true : false
end
#We define what is a multiple of 5
def multiple_5 (n)
  (n % 5 == 0)? true : false
end

def perform
  puts "Until what number do you want the sum?" # We ask until what number want to compute the sum
  range = gets.chomp.to_i
  array_sum = []
  i = 1
    while i < range #We loop until i reach thennumber chossen by the user
        case
          when multiple_3(i) # We check if i is a multiple of 3
            array_sum.push(i) # We push in array
          when multiple_5(i)
            array_sum.push(i)
          else
            #
        end
      i += 1
    end
  puts sum(array_sum) # We sum the array
end

perform
