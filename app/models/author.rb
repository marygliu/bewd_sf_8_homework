class Author < ActiveRecord::Base
	has_many :articles
	has_many :publishers, through: :articles

	def self.search(query)
		if query
			Author.where('name LIKE :query', {query: "%#{query}%"})
		else
			mashable = JSON.load(RestClient.get('http://mashable.com/tech.json'))
			mashable['rising'].each do |article|
				if article['author'] != Author.where(name: article['author'])
					Author.create! :name => article['author']
				end
			end
			Author.all
		end
	end

end
