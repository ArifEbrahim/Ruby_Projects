require_relative 'hangman_art'
require_relative 'hangman_words'


chosen_word = @word_list.sample
word_length = chosen_word.length
lives = 6
stop = false 

puts @logo

# create blanks 
display = []
(1..word_length).each {
  display.push("_")
}

while stop == false
  puts "Guess a letter: "
  guess = gets.chomp.downcase

  if display.any?(guess)
    puts "You already guessed #{guess}"
  end
  # check guessed letter

  (0..word_length).each {|x|
    letter = chosen_word[x]
    if letter == guess
      display[x] = letter
    end
  }

  unless display.include?(guess)
    lives -= 1
    puts "You guessed #{guess}, that's not in the word. You lose a life"
    if lives == 0
      stop = true
      puts "You lose"
    end
  end

  print display.join(" ")
  puts ""
  puts @stages[lives]

  if display.all?{|x| x != "_"}
    stop = true 
    puts "You win!"
  end
  
end
