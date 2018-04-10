
def jean_michel_data(string, dictionary)
# dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
# string = "below"
count = Hash.new(0)
dictionary.each { |word_array|
  string.downcase!
  if string.include?(word_array)
    puts word_array
    puts string
    i = string.scan(/#{word_array}/).length
    puts i
    count[word_array] += i
  end
}
puts count
end

jean_michel_data("Howdy partner, sit down! How's it going?",["below", "down", "go", "going", "horn", "how", "howdy", "it","below", "i", "low", "own", "part", "partner", "sit"])