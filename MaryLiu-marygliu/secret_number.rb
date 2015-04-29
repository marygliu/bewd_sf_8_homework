###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

#Introduction

puts 'Welcome to Mary Liu\'s secret number game!
What\'s your name?'
player_name = gets.chomp.to_s

#Rules of the game

puts "Hi " + player_name + "!
Here\'re the rules of the game:
1. You must guess a number between 1 and 10
2. You\'ll have 3 tries to do so.
Let\'s get started..."

#Hard-coding secret number

secret_num = rand(1..10)
srand secret_num

#Request guess

puts 'Give me your guess'
guess_count = 1

while guess_count < 3
	guess = gets.chomp.to_i
	
	if guess > secret_num
			guess_count += 1
			puts "Too high. You have #{ 4 - guess_count } guesses before the game is over. Enter another number."
	elsif guess < secret_num
		guess_count += 1
		puts "Too low. You have #{ 4 - guess_count } guesses before the game is over. Enter another number."
	
	else
		puts 'you won!'
		break
	end
end

while guess_count == 3
	guess = gets.chomp.to_i
	
	if guess == secret_num
		puts 'you won!'
	else
		puts "Sorry you lost. Secret number is #{secret_num}"
		break
	end
end
