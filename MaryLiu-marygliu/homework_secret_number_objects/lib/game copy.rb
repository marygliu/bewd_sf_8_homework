# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

# This class holds most of the game logic and should:
#   Welcome players and inform them of the game rules.
#   Initialize the Player class.
#     Initialize the Secret Number class.
#     Prompt the user to choose a number, verify if the user guessed correctly.
#     If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.
#
# Add helpful comments to your code to document what each section does.

#require_relative 'secret_number'

#class Game
#	attr_accessor :guess, :count, :secret_num
#	
#	def initialize (guess)
#		@guess = guess
#		@count = 0
#		@secret_num = SecretNumber.new
#	end


#	def rules
#		puts "You have 3 chances to guess the secret number, which is between 1 through 10."
#	end	

secret_num = rand(0..10)
srand secret_num
count = 0

puts "guess please:"
guess = gets.chomp

	def high_low_evaluation(guess)
		if guess < secret_num
			 "Too low."
		elsif guess > secret_num
			 "Too high."
		end
	end

	def game
#		guess = ask_user "What\'s your guess"

		
		while guess != secret_num
			count += 1
			while count == 1 || count == 2 
				puts high_low_evaluation(guess)
				puts "You have #{ 3-@count } guess#{ @count==2? '': 'es'} left."
			break if count == 3  
				puts "Sorry. You lost."
			end
		end

		if guess == secret_num
			puts "You won!"
		end
			
		#if guess != secret_num in first and second guess
			#if guess != secret_num
				#puts "Sorry. You lost."
			#if guess == secret_num
				#puts "You won!"
		
	end

end

puts "guess"
  gets.chomp
guess = Game.new(guess)

