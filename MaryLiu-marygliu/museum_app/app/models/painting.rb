class Painting < ActiveRecord::Base
	belongs_to :artist
	belongs_to :museum

	def self.search(query)
		if query
			Painting.where('title LIKE :query', {query: "%#{query}%"})
		else
			Painting.all
		end
	end
end
