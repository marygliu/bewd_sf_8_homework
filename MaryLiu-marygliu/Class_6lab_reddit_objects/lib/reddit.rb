# HINT: You will have to add an initialize method!
require 'json'
require 'rest-client'

class Reddit
  # TODO: This class should have an attribute called "stories".
  attr_reader :stories

  def initialize 
    @stories = []
  end

  def fetch_stories 
    if @stories.length > 0
      @stories
    end   


    json = RestClient.get('http://www.reddit.com/.json')
    result = JSON.load json

    result['data']['children'].each do |this| 
      title = this['data']['title']
      ups = this['data']['ups']
      url = "reddit.com#{ this['data']['permalink']}"
      @stories << Story.new(title, ups, url) 

    end

    @stories
  
  end

end



 # TODO: This should check if the stories already have been loaded,
# and if so, return them. Otherwise, it should load the stories from reddit:
    #   1. It should load http://reddit.com/.json as JSON
    #   2. Your code should find the ***title ('title'), upvotes ('ups'), and story URL ('permalink')**


#result['data']['children'].each do |this| 
#      puts "Title: #{ this['data']['title'] }"
#      puts "Upvotes: #{this['data']['ups'] }"
#      puts "URL: reddit.com#{ this['data']['permalink'] }"
#end

  




