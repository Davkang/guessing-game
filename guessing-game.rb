# Accept user input and save it as a variable.



# Start a while loop. The while loop should run for as long as the user hasn't found the correct answer.
  # try again.
# After the user has found the correct answer, the loop should exit and a congratulatory message should display.


# require 'pry'


score = 0
# Ask the user what difficulty they would like to play at - "easy" or "hard"
puts "Welcome to the Guessing Game! What difficulty would you like?"
puts "Type easy or hard:"


# Pick a random number. If the user chose "easy", the number should be between 1 and 10.

# random_number = rand() + 1

difficulty = gets.chomp

# Depending on which level the user chose, say that you picked a random number between 1 and 10 or 20, and that the user now has to guess it.
if difficulty == "easy"
  random_number = rand(10) + 1
  puts "I've picked a number between 1 and 10. Now guess it!"

  # If the user chose "hard", the number should be between 1 and 20
elsif difficulty == "hard"
  random_number = rand(20) + 1
    puts "I've picked a number between 1 and 20. Now guess it!"
end

# binding.pry


# score = score + 1
score += 1

user_guess = gets.chomp


# Each time the loop runs, the user should be asked to pick a number. As long as the answer isn't correct, the user should be asked to
while user_guess != random_number.to_s
  puts "Wrong guess, try again!"
  score += 1

  user_guess = gets.chomp
end

puts "You win! Nice job!"
puts "Your score was: " + score.to_s
