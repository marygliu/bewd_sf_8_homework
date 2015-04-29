# this class will generate our secret number for us
class SecretNumber
	attr_reader :secret_num

	def secret_num_generator
		secret_num = rand(1..10)
	end
end
