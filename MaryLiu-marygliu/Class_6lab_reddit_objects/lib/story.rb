class Story
  attr_accessor :title, :ups, :url

  def initialize(title, ups, url)
  	@title = title
  	@ups = ups
  	@url = url
  end

  def headline
  	"Title: #{title}"
   "Upvotes: #{ups}"
  	 "URL: #{url}"
  end
end

# TODO: This object should require four arguments:
  #  - title
  #  - number of (up)votes on a story
  #  - the URL of the story
  #  - the site that it came from

  # TODO: Add a method called "headline" that returns a pretty string for
  # displaying on the command line with all of the data from the object.




  #   3. Using that data, create a new Story object with the title, votes,
    #      story URL, and 'reddit.com' for the site argument


    #   4. Store a list Story objects into the stories attribute
    #   5. Return the list of story objects