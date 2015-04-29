require 'json'
require 'rest-client'

json = RestClient.get('http://www.reddit.com/.json')
@result = JSON.load json


require_relative 'lib/question'
require_relative 'lib/greeting'
require_relative 'lib/domains'
require_relative 'lib/story'

#0 - Greet and ask for name.
Greeting.new

#1 - These are the domains currently publishing on Reddit's top 25 stories
domains = Domains.new
domains_list = domains.pull_domains
puts domains_list.uniq

#2 - [input] Which of the following domains on Reddit are of your interest? 
user_domain = Askuser.new.ask_user ("Pick a domain to see trending headlines from that domain:")

#3 - These are the stories from [user selected domain]
puts "These are the stories from #{user_domain}:"

headlines_list = domains.pull_headlines
domains_list.each_with_index do |each, index|
	if each == user_domain
		puts headlines_list[index]
	end
end
