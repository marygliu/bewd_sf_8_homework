require 'json'
require 'rest-client'

json = RestClient.get('http://www.reddit.com/.json')
result = JSON.load json

result['data']['children'].each do |this| 
  puts "Title: #{ this['data']['title'] }"
  puts "Upvotes: #{this['data']['ups'] }"
  puts "URL: reddit.com#{ this['data']['permalink'] }"
end