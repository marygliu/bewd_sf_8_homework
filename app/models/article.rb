class Article < ActiveRecord::Base
	belongs_to :author
	belongs_to :publisher

	def self.fetch_mashable
		
		Article.all

	end
	
	

end
