rock = "
    _______
---.   ____)
      (_____)
      (_____)
      (____)
---.__(___)
\n"

paper = "
    _______
---.   ____)____
          ______)
          _______)
         _______)
---.__________)
\n"

scissors = "
    _______
---.   ____)____
          ______)
       __________)
      (____)
---.__(___)
\n"

continue = true

while continue == true
  puts "What do you choose? type 0 for rock, 1 for paper or 2 scissors"

  user_choice = gets.chomp.to_i

  if user_choice == 0
    puts rock
  elsif user_choice == 1
    puts paper
  else 
    puts scissors
  end

  computer_choice = rand(0..2)

  puts "computer chose:"

  if computer_choice == 0
    puts rock
  elsif computer_choice == 1
    puts paper
  else 
    puts scissors
  end

  row1 = ["draw", "win", "lose"]
  row2 = ["lose", "draw", "win"]
  row3 = ["win", "lose", "draw"]
  result = [row1, row2, row3]

  outcome= result[computer_choice][user_choice]

  puts "You #{outcome}!"
  puts "Type 'yes' to play again or 'no' to exit."
  replay = gets.chomp
  if replay == "yes"
    print "\033[2J\033[H"
  else
    continue = false 
  end
end