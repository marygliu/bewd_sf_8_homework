# You will be changing this file for this exercise.
#
# HINT: In each of the files of this folder, there is a TODO describing what
#       you should do with more details.
#
# Instructions:
# 1. Complete the Reddit object, so that it looks up stories from the reddit API and returns a list of stories. (see line 22)
# 2. Iterate through each of the stories in the list below. (see line 27)
# 3. If you finish early, do the same thing with Mashable.
# 4. If you finish early, do the same thing with Digg (you will have to create a new file)

# HINT: Start with creating the Reddit object and make fetch_stories work first.
# HINT: Test as you go. Don't try to write the whole program at once. How can you test with puts?

require_relative 'lib/story'
require_relative 'lib/reddit'
require_relative 'lib/mashable'

#stories = []


# TODO: Fetch the stories using the Reddit object
stories = Reddit.new


# BONUS TODO 1: Fetch the stories using the Mashable object
# BONUS TODO 2: Fetch the stories from Digg (you will have to create a new file)

# TODO: Iterate through each Story and puts it's headline
stories.fetch_stories.each do |story|
 puts story.headline
end
