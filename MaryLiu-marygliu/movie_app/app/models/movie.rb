class Movie < ActiveRecord::Base
    validates :title, :description, presence: true
    validates :year_released, numericality: { greater_than: 1800 }

	def self.search(query)
		if query 
			Movie.where('title LIKE :query OR year_released LIKE :query OR description LIKE :query', {query: "%#{query}%"})  #replace "%#{params[:q]}%" with "%#{query}%"
		
		else
			Movie.all
		end
	end
end
