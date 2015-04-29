# this class will generate our secret number for us: create and store a random number between 1-10.
class SecretNumber
	attr_accessor :secret_num

	def secret_num_generator
		@secret_num = rand(1..10)
		srand @secret_num
		
	end

end
