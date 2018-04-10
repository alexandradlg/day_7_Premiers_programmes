# ask a sentence and convert it using ascii 

def encoder
    puts "Entrez le texte à encoder : "
    text = gets.chomp
    puts "Entrez ici le nombre à utliser pour encoder : "
    key = gets.chomp.to_i 
    my_array = text.split("")

    exception_1 = ["z"]
    exception_2 = ["Z"]
    inclusion = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z", "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
      
    my_array.each { |letters|
        if inclusion.include?(letters)
            new_code = letters.ord + key
            if exception_1.include?(letters)
                new_code = "a".ord + key - 1
                print new_code.chr
            elsif exception_2.include?(letters)
                new_code = "A".ord + key - 1
                print new_code.chr
            else
                new_code = letters.ord + key
                print new_code.chr
            end
        else
            print letters
        end          
    }
 print "\n"
end

def perform
    encoder
end
 
 perform