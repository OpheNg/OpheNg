def square(n) #Paramètres
  #Corps de la méthode
  return n * n
end

puts square(3)  #Arguments
puts square(4)

def greets1
  return "welcome" # --> renvoi une valeur
end
puts greets1

def greets2
  puts "welcome"  #--> imrime un résultat
end


def greets(first_name , last_name)
  full_name = "#{first_name} #{last_name}"
  return "welcome #{full_name}"
end

the_greet = greets("John" , "Doe")
puts the_greet

puts greets("John" , "Doe")
puts greets("Bob", "l'éponge")
