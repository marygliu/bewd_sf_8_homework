class RitlysController < ApplicationController

	#before_action :set_ritly, only: [:show]

	  # GET /shirts
	  # GET /shirts.json
	  def index
	    @ritlys = Ritly.all
	    @ritly = Ritly.new
	  end

	  # GET /shirts/1
	  # GET /shirts/1.json
	  def show
	  	@ritly = Ritly.find_by hash_code: params[:id]
	  end

	  # GET /shirts/new
	  def redirectors
	  	@ritly = Ritly.find_by hash_code: params[:hash_code]
	    
	  end

	  

	  # POST /shirts
	  # POST /shirts.json
	  def create
	    @ritly = Ritly.new(ritly_params)
	    @ritly.hash_code = rand(999999)
	    @ritly.save

	 
	    redirect_to ritly_path(@ritly.hash_code)
	  end


	  private
	    

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def ritly_params
	      params.require(:ritly).permit(:link)
	#strong paramter -- require a shirt parameter, and allow these 4 attributes. Must update these parameters when you update the form.
	    end


end
