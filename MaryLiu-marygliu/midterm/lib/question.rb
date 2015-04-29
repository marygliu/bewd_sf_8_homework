class Askuser 
	attr_accessor :question, :answer

	def ask_user (question) 
	  puts question
	  @answer = gets.chomp

	end

	def string
		if @answer.class != 'string'
			puts "Please enter a valid phrase"
		end
	end
 
end
