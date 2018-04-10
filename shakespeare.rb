def get_file_as_string(filename)
    data = ''
    f = File.open(filename, "r") 
    f.each_line do |line|
      data += line
    end
    return data
end
  
def jean_michel_data(string, dictionary)
    count = Hash.new(0)
    dictionary.each { |word_array|
      string.downcase!
      if string.include?(word_array)
        i = string.scan(/#{word_array}/).length
        count[word_array] += i
      end
    }
    puts "nombre d'occurences des mots du dictionnaire dans le corpus :"
    puts count
    print "\n"
    end
    
    def perform_classic
        classic_dictionary =["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
        # Shakespeare file : tronqué à la ligne 13 000 car impossible de runner le programme ruby avec plus de lignes
        shakespeare = get_file_as_string 'shakespeare.txt'
        jean_michel_data(shakespeare, classic_dictionary)
    end

    def perform_swear_words
        shakespeare = get_file_as_string 'shakespeare.txt'
        swear_words = get_file_as_string 'swear_words.txt'
        dictionary_swear_words = swear_words.split(" ")
        jean_michel_data(shakespeare, dictionary_swear_words)
    end
    
    perform_classic
    perform_swear_words



    
