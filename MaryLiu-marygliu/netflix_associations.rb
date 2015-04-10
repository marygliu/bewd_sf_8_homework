create_table "queue", force: true do |t| #join table
  t.integer  "user_id"
  t.integer "movie_id"
end

class User < ActiveRecord::Base
  has_many_and_belongs_to :movies #OR, can use join-table, 'Queue': has_many :movies through: queue 
  has_many :reviews
end

class Movie < ActiveRecord::Base
  has_many_and_belongs_to :movies
  belongs_to :genre #where the foreign key is.
  has_many :reviews	
end

class Genre < ActiveRecord::Base
  has_many :movies
end

class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :movies
end
