Author.delete_all
Publisher.delete_all
Article.delete_all


author1 = Author.create!(:name => 'Sam Murphy Kelly')
author2 = Author.create!(:name => 'Jordan Crook')
author3 = Author.create!(:name => 'Bob Summers')

pub1 = Publisher.create!(:name => 'Mashable Tech Column', :url => 'http://mashable.com/tech')
pub2 = Publisher.create!(:name => 'Reddit Gadget Column', :url => 'http://www.reddit.com/r/gadgets')

Article.create!(:title => "Police release drug-buying Swiss bot for the sake of art", :shares => '488', :image => 'http://rack.3.mshcdn.com/media/ZgkyMDE1LzA0LzE3L2ZiL2RydWdyb2JvdC5lYjAxOC5qcGcKcAl0aHVtYgkxNzV4MTc1IwplCWpwZw/d4a414b7/307/drug-robot.jpg', :short_url => 'http://on.mash.to/1GTTWAr', :excerpt => 'The Random Darknet Shopper, an automated bot that randomly purchased items from the deep web using Bitcoin, was released by the Swedish police.', :author => author1)
Article.create!(:title => "Ford F-150 Raptor virtual driving chair has a seatbelt — and you'll need it", :shares => '1203', :image => 'http://rack.2.mshcdn.com/media/ZgkyMDE1LzA0LzAzLzFiL3JwdHIxLjYyOTEzLmpwZwpwCXRodW1iCTk1MHg1MzQjCmUJanBn/cd5b75c2/86a/rptr1.jpg', :short_url => 'http://on.mash.to/1anQHUh', :excerpt => 'Fear the Raptor.', :author => author2)
Article.create!(:title => "Meerkat update adds improvements, but app still has much to fix", :shares => '1170', :image => 'http://rack.0.mshcdn.com/media/ZgkyMDE1LzAzLzMwLzFlL21lZXJrYXQxLjdjZDc0LmpwZwpwCXRodW1iCTk1MHg1MzQjCmUJanBn/5811b264/78c/meerkat-1.jpg', :short_url => 'http://on.mash.to/1BudH9R', :excerpt => 'Meerkat just delivered its first major update since going viral.', :author => author1)
Article.create!(:title => "5 tools to check if your clothing is ethically made", :shares => '1142', :image => 'http://rack.0.mshcdn.com/media/ZgkyMDE1LzA0LzI0LzQzL0Jhcm9uZXNzWW91LjI2YTM3LmpwZwpwCXRodW1iCTk1MHg1MzQjCmUJanBn/eb2820ba/de5/Baroness-Young-Of-Hornsey.jpg', :short_url => 'http://on.mash.to/1OjAEZB', :excerpt => 'test text blah blah blah.', :author => author3)

puts "Articles and Authors Added"