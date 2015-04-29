@secret_num = rand(1..10)
puts @secret_num


puts "what is your guess (pick number between 1 and 10)?"
num = gets.chomp.to_i


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
			puts "Sorry. You lost."
			break
		end
		guess = gets.chomp.to_i

	end

	if guess == @secret_num
		puts "You won!"
	end

end

start(num)