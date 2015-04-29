#Show the domains currently publishing on Reddit's top 25 stories

require 'json'
require 'rest-client'



class Domains
	attr_accessor :domain, :domain_name

	def initialize
		@domain_name = domain_name
		@headlines = []
		@domain = []
		json = RestClient.get('http://www.reddit.com/.json')
		@result = JSON.load json

	end

	def pull_domains
		
		@result['data']['children'].each do |pull| 
		  	@domain_name = pull['data']['domain']
		  	@domain << domain_name
		end

		@domain
	end

	def pull_headlines 

		@result['data']['children'].each do |pull|
			
			headline = pull['data']['title']
			@headlines << headline
		end
		@headlines
	end


end