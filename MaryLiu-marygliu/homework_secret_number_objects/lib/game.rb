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



class Game
	attr_accessor :count, :secret_num
	
	def initialize 
		@count = 0
		@secret_num = SecretNumber.new.secret_num_generator
		#@secret_num = @secret_num.secret_num_generator
	end

	def start
		puts "what is your guess (pick number between 0 and 10)?"
		guess = gets.chomp.to_i
		high_low_evaluation(guess, @secret_num)
	end
	

	def high_low_evaluation(guess, secret_num)
		if guess < @secret_num
			 puts "Too low."
		elsif guess > @secret_num
			 puts "Too high."
		end

		while guess != @secret_num
			count += 1
			if count < 3
				high_low_evaluation(guess, @secret_num)
				puts "You have #{ 3-count } guess#{ count==2? '': 'es'} left."
				
			elsif count == 3  
				puts "Sorry. You lost."
				break
			end
			guess = gets.chomp.to_i

		end

		if guess == @secret_num
			puts "You won!"
		end

	end
			

end


####################
