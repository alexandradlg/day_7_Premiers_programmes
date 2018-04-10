def chiffre_de_cesar
  puts "Que voulez vous coder en Caesar?"
  string = gets.chomp.to_s
  puts "Avec combien de décalage?"
  shift = gets.chomp.to_i
  puts to_letter(shift(to_ascii(string),shift))
end

def to_ascii(string)
  array_normal = string.split("")
  array_ascii = []
  array_normal.each { |x|
    array_ascii.push(x.ord)
  }
  return array_ascii
end

def shift(array_n,shift)
  noshift_1 = [*32..64]
  noshift_2 = [*91..96]
  noshift_3 = [*123..126]
  noshift_full = noshift_1 + noshift_2 + noshift_3
  array_s = []

  array_n.each { |y|
    case
    when noshift_full.include?(y)
      array_s.push(y)
    when y == 90
      y = 65 + shift - 1
      array_s.push(y)
    when y == 122
      y = 97 + shift - 1
      array_s.push(y)     
    else 
      y = y + shift
      array_s.push(y)
    end
  }
  return array_s
end

def to_letter(array_s)
  array_l = []
  array_s.each {|x|
    array_l.push(x.chr)
  }
  return array_l.join("")
end

chiffre_de_cesar