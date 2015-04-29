#Greet and tell user what program does

class Greeting
	attr_accessor :name
	def initialize
		name = Askuser.new
		@name = name.ask_user ("Hi, what\'s your name?")
		@name = name.string
		puts "Welcome to the Reddit domain explorer app, #{@name}!"
		puts "You can see which domains are currently trending on Reddit."
		puts "And chose stories to read more based on your domain choice."
	end


end
