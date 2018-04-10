
def jean_michel_data(string, dictionary)

count = Hash.new(0)
dictionary.each { |word_array|
  string.downcase! # Pour tout le string soit en downcase, sinon le match ne marche pas bien après
  if string.include?(word_array) #On cherche à savoir si le string contient la valeur de l'array
    i = string.scan(/#{word_array}/).length #On calcul l'incrémentation. Sca, permet d'avoir le nombre de fois que le string apparait et le met sous forme d'array. Ensuite lenght calcul la longueur de l'array.
    count[word_array] += i #on incrémente
  end
}
puts "nombre d'occurences des mots du dictionnaire dans le corpus :"
puts count
print "\n"
end

def perform_string1
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it","below", "i", "low", "own", "part", "partner", "sit"]
  string1 = "Below"
  jean_michel_data(string1, dictionary)
end

def perform_string2
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it","below", "i", "low", "own", "part", "partner", "sit"]
  string2 = "Howdy partner, sit down! How's it going?"
  jean_michel_data(string2, dictionary)
end

perform_string1
perform_string2