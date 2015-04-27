class ArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:show]

	def index
		@articles = Article.mashable
		@author = Author.new

	end

	def show
		@article = Article.find(params[:id])
		@author = Author.find(params[:id])
	end

end
