class DareController < ApplicationController
  def index #this should be the home page where you can see all the dares
    @all_dares = Dare.all 
  end

  def show
    @dare = Dare.find(params[:id])
    @all_submits = @dare.submits
  end

  def new
    @dare = Dare.new
    
  end
  
  def create
     @dare = Dare.new(params[:dare])

      @dare.save
       # redirect_to dare_index_path
       #     else
       #     redirect_to dare_index_path
       #    end
  end

  def edit
    @dare = Dare.find(params[:id])
  end

  def update
    @dare = Dare.find(params[:id])
  end

  def destroy
    @dare = Dare.find(params[:id])
  end
end
