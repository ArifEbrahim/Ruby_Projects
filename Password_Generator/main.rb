letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']
numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


puts "Welcome to the Password Generator!"
puts "How many letters would you like in your password?"
nr_letters = gets.chomp
puts "How many symbols would you like?"
nr_symbols = gets.chomp
puts "How many numbers would you like?"
nr_numbers = gets.chomp

password = []


for x in 0...nr_letters.to_i
  choice = rand(0..51)
  add_letter = letters[choice]
  password.push(add_letter)
end

for x in 0...nr_symbols.to_i
  choice = rand(0..8)
  add_symbol = symbols[choice]
  password.push(add_symbol)
end

for x in 0...nr_numbers.to_i
  choice = rand(0..9)
  add_number = numbers[choice]
  password.push(add_number) 
end

password.shuffle!
puts "Your password is: "
puts password.join