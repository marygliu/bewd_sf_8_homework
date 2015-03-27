class Movie < ActiveRecord::Base
	def self.search(query)
		if query 
			Movie.where('title LIKE :query', {query: "%#{query}%"})  #replace "%#{params[:q]}%" with "%#{query}%"
		else
			Movie.all
		end
	end
end
