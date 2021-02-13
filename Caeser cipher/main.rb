require_relative 'art'

$alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']


def caeser(text,shift,direction)
  end_text = ""
  if direction == "decode"
    shift *= -1
  end
  text.each_char do |x|
    if $alphabet.include?(x)
      shifted_position = $alphabet.index(x) + shift
      end_text += $alphabet[shifted_position]
    else 
      end_text += x
    end
  end
  puts "Here is the #{direction}d result: #{end_text}"
end

puts @logo
puts ""
stop = false

while stop == false 
  puts "Type 'encode' to encrypt, type 'decode' to decrypt:"
  direction = gets.chomp
  puts "Type your message:"
  text = gets.chomp.downcase
  puts "Type the shift number:"
  shift = gets.chomp.to_i

  shift = shift % 26

  caeser(text, shift, direction)

  puts "Type 'yes' if you want to go again. Otherwise type 'no'."
  restart = gets.chomp.downcase
  if restart == "no"
    stop = true
    puts "Goodbye."
  end
end 