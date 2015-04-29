# this class will likely be simple, keeping track of the user's name.
# Should ask the user for their name and store it in an attribute.
class Player
	attr_accessor :name
	def initialize (name)
		@name = name
	end
end
