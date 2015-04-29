class Museum < ActiveRecord::Base
	has_many :paintings
	has_many :artists, through: :paintings

	def self.search(query)
		if query
			Museum.where('name LIKE :query', {query: "%#{query}%"})
		else
			Museum.all
		end
	end

	
end
