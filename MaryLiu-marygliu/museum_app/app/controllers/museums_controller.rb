class MuseumsController < ApplicationController
  def index
    @museums = Museum.all
    @paintings = Painting.all
    @museum_paintings = @paintings.where(museum_id: params[:q])
  end

  def show
  end

  def new
    @museum = Museum.new
  end

  def create
    @painting = Painting.new(museum_params)
    @painting.museum_id = rand(1..10000)
    @painting.save

    redirect_to museum_path(@painting.museum_id)
  end

  def update
  end

  private
    def museum_params
      #params.require(:museum).permit(:name)
    end
end
