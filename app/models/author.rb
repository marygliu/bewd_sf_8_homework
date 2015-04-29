class Author < ActiveRecord::Base
	has_many :articles
	has_many :publishers, through: :articles

	def self.search(query)

		if query
			Author.where('name LIKE :query', {query: "%#{query}%"})
		else
			Article.delete_all
			Author.delete_all
			
			#Pull Mashable articles
			mashable_sites = ['http://mashable.com/tech.json', 'http://mashable.com/dev-design.json', 'http://mashable.com/gadgets.json', 'http://mashable.com/mobile.json']

			#mashable = JSON.load(RestClient.get('http://mashable.com/tech.json'))
						
			mashable_sites.each do |content|
				mashable = JSON.load(RestClient.get(content))
				mashable['rising'].each do |article|
					author = Author.where(name: article['author']).first_or_create
					Article.create(
						:title => article['title'], 
						:shares => article['shares']['total'].to_i,
						:image => article['image'],
						:short_url => article['short_url'],
						:excerpt => article['excerpt'],
						:author => author)
				end
			end
			Author.all

		end
	end

	def self.shares_count
		total_shares = 0
		total_shares += article.shares
		total_shares
	end

end
