class PaintingsController < ApplicationController
  def index
    @paintings = Painting.search(params[:q])
    @all_paintings = Painting.all
    #@museums = Museum.search(painting.museum_id)
  end

  def show
    @painting = Painting.find params[:id]
  end

  def new
    @painting = Painting.new
    @museums = Museum.all
    @artists = Artist.all
  end

  def create
    #@painting = painting_params.merge(upvotes: 1)
    @painting = Painting.new(painting_params)

    if @painting.save
      redirect_to @painting
    else
      render :new
    end
  end

  private
  def painting_params
    params.require(:painting).permit(:title, :image, :museum_id, :artist_id)
  end
end
