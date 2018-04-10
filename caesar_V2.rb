def chiffre_de_cesar
  puts "Que voulez vous coder en Caesar?"
  string = gets.chomp.to_s
  puts "Avec combien de décalage?"
  shift = gets.chomp.to_i
  puts to_letter(shift(to_ascii(string),shift)) #ici on imbrique toutes nos fonctions
end

def to_ascii(string) #Fonction pour passer de letter à ASCII
  array_normal = string.split("") #on split le string lettre par lettre
  array_ascii = [] #on créé une nouvelle array pour la remplir après
  array_normal.each { |x| # On boucle sur chaque caractere pour le chager en ASCII
    array_ascii.push(x.ord) # On push les ASCII dans un nouvel array
  }
  return array_ascii
end

def shift(array_n,shift) #fonction pour faire le shift dans ASCII
  noshift_1 = [*32..64] 
  noshift_2 = [*91..96]
  noshift_3 = [*123..126]
  noshift_full = noshift_1 + noshift_2 + noshift_3 #Tout les noshift correspondent aux ASCII number des caractère que l'on ne veut pas changer.
  array_s = [] #on créé une nouvelle array pour la remplir après

  array_n.each { |y|
    case
    when noshift_full.include?(y) #si le numéro ASCII est dans noshift, on ne décale pas
      array_s.push(y) #on push dans le nouvel array
    when y == 90 # Pour boucler de Z à A
      y = 65 + shift - 1 # 65 en ASCII c'est A, on fait le shift, mais comme on a déjà décalé on enlève 1
      array_s.push(y)
    when y == 122 # Pour boucler de z à a
      y = 97 + shift - 1 # 97 en ASCII c'est a, on fait le shift, mais comme on a déjà décalé on enlève 1
      array_s.push(y)     
    else 
      y = y + shift #on shift tout les autres caractere
      array_s.push(y)
    end
  }
  return array_s
end

def to_letter(array_s) #fonction pour traduire du ASCII aux lettre
  array_l = [] #on créé une nouvelle array pour la remplir après
  array_s.each {|x| #on boucle sur chaque numéro ASCII
    array_l.push(x.chr) #on traduit de ASCII en lettre et on push dans le nouvel array
  }
  return array_l.join("") #On join toutes les valeurs de l'array pour refaire la phrase
end

chiffre_de_cesar