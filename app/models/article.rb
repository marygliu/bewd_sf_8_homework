class Article < ActiveRecord::Base
	belongs_to :author
	belongs_to :publisher

	def self.fetch_mashable
		Article.delete_all
		Author.delete_all

		mashable = JSON.load(RestClient.get('http://mashable.com/tech.json'))
		
		#Author.find_by(name: article['author'])

		#Pull author names
		mashable['rising'].each do |article|
			if #cant find matching author
				Author.create!(:name => article['author'])
			end
		end
	


			#if article['author'] != Author.where(name: article['author'])
			#	Author.create! :name => article['author']
			#end
	
		Author.all

		
		#Pull article metadata
		mashable['rising'].each do |article|
			Article.create(
				:title => article['title'], 
				:shares => article['shares']['total'].to_i,
				:image => article['image'],
				:short_url => article['short_url'],
				:excerpt => article['excerpt'],
				:author => Author.find_by(name: article['author']))
		end
		Article.all
	end
	
	

end
