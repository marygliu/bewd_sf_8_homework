class ArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:show]

	def index
		@articles = Article.fetch_mashable
		#@author_name = Author.find_by(name: article['author']).name 

	end

	def show
		@article = Article.find(params[:id])
		#@author = Author.find(params[:id])
	end

end
