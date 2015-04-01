#**** @Bryan / @David: I can't get my 'update' method to work. Something wrong with passing @movie.update(movie_params) through the method.
#**** Any advice????

class MoviesController < ApplicationController
	
	#Update your movie's index.html.erb so that it lists all movies in the database. (Google is your friend).

	#Rails console is also your friend. Use it to explore active record methods that will help you interact with the database.

	def index
		@movies = Movie.all
		@movies = Movie.search(params[:q])
		#Note: this line is the same as --	
#			@movies = Movie.first
#			@movies.search

#		if params[:q]
			#@movies = Movie.where(title: params[:q]) <-- This search for EXACT match of the input
			#@movies = Movie.where('title LIKE #{params[:q]}', query: params[:q]) <-- don't do this. B/c it'll pull the URL after ? verbatum
#			@movies = Movie.where('title LIKE :query', {query: "%#{params[:q]}%"}) 
				#Controller shouldn't ever have this kind of logic. Belongs to the model.
			#LIKE says match anything that looks like the entire query. 
			#look like something that began with a string, then it's %:query. 
			#Note: { search: ....} is passing a hash thru
			#predictive search: must install elastic or sunspot gems, OR use some Javascript

#			if @movies.count == 0  #.length is ruby code. .count is SQL code for database. Always use .count
#				@movies = Movie.all
#			end

#		else
#			@movies = Movie.all
#		end
	end

	# GET /movies/1
	# GET /movies/1.json
	def show
		@movie = Movie.find(params[:id])
	end

	# GET /movies/new
	def new
		@movie = Movie.new
	end

	# GET /movies/1/edit
	def edit
		@movie = Movie.find(params[:id])
	end

	# POST /movies
	# POST /movies.json
	def create
		@movie = Movie.new(movie_params)	
	
	#If movie
	    respond_to do |format|
	      if @movie.save
	        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
	        format.json { render :show, status: :created, location: @movie }
	      else
	        format.html { render :new }
	        format.json { render json: @movie.errors, status: :unprocessable_entity }
	      end
	    end

  	end

	  # PATCH/PUT /movies/1
	  # PATCH/PUT /movies/1.json
	def update
	    respond_to do |format|
	      if @movie.update(movie_params)
	        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
	        format.json { render :show, status: :ok, location: @movie }
	      else
	        format.html { render :edit }
	        format.json { render json: @movie.errors, status: :unprocessable_entity }
	      end
	    end
	end

	  # DELETE /movies/1
	  # DELETE /movies/1.json
	def destroy
	    @movie.destroy
	    respond_to do |format|
	      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_movie
	      @movie = Movie.find(params[:id])
	    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def movie_params
	      params.require(:movie).permit(:title, :description, :year_released, :rating)
		#strong paramter -- require a movie parameter, and allow these 4 attributes. Must update these parameters when you update the form.
	    end
end

