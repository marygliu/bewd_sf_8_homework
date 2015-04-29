# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	attr_accessor :num, :secret_num, :name

	def initialize (name)
		num = num
		@secret_num = SecretNumber.new.secret_num_generator
		@name = name
	end


	def start (guess)

		count = 0
		while guess != @secret_num
			count += 1
			if count < 3
				if guess < @secret_num
			 		 puts "Too low."
				elsif guess > @secret_num
			  		puts "Too high."
				end
				puts "You have #{ 3-count } guess#{ count==2? '': 'es'} left."
				
			elsif count == 3  
				puts "Sorry. You lost, #{@name}."
				break
			end
			guess = gets.chomp.to_i

		end

		if guess == @secret_num
			puts "You won, #{@name}!"
		end

	end

end
