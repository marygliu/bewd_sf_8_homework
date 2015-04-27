class Article < ActiveRecord::Base
	belongs_to :author
	belongs_to :publisher

	def self.mashable
		mashable = JSON.load(RestClient.get('http://mashable.com/tech.json'))
		#Pull author names
		mashable['rising'].each do |article|
			if article['author'] != Author.where(name: article['author'])
				Author.create! :name => article['author']
			end
		end
		Author.all

		
		#Pull article metadata
		mashable['rising'].each do |article|
			Article.create(
				:title => article['title'], 
				:shares => article['shares']['total'],
				:image => article['image'],
				:short_url => article['short_url'],
				:excerpt => article['content']['plain'],
				:author => @author)
		end
		Article.all
	end
	
	

end
