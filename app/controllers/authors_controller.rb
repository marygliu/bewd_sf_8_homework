class AuthorsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
  	
  	@authors = Author.search(params[:q])


  end

  def show
  	@author = Author.find(params[:id])
  	#@author_articles = Article.where(author: params[:id])#@author.id)

  end
end
