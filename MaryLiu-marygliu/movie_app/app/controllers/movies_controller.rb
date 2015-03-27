class MoviesController < ApplicationController
	
	#Update your movie's index.html.erb so that it lists all movies in the database. (Google is your friend).

	#Rails console is also your friend. Use it to explore active record methods that will help you interact with the database.

	def index
		@all_movies = Movie.search(params[:q])
		#Note: this line is the same as --	
#			@all_movies = Movie.first
#			@all_movies.search

#		if params[:q]
			#@all_movies = Movie.where(title: params[:q]) <-- This search for EXACT match of the input
			#@all_movies = Movie.where('title LIKE #{params[:q]}', query: params[:q]) <-- don't do this. B/c it'll pull the URL after ? verbatum
#			@all_movies = Movie.where('title LIKE :query', {query: "%#{params[:q]}%"}) 
				#Controller shouldn't ever have this kind of logic. Belongs to the model.
			#LIKE says match anything that looks like the entire query. 
			#look like something that began with a string, then it's %:query. 
			#Note: { search: ....} is passing a hash thru
			#predictive search: must install elastic or sunspot gems, OR use some Javascript

#			if @all_movies.count == 0  #.length is ruby code. .count is SQL code for database. Always use .count
#				@movies = Movie.all
#			end

#		else
#			@all_movies = Movie.all
#		end
	end

	def show 
	end


end
