class DareController < ApplicationController
  def index #this should be the home page where you can see all the dares
    @all_dares = Dare.all 
    @a = [];
    @b = [];
  end

  def show
    @dare = Dare.find(params[:id])
    @all_submits = @dare.submits
  end

  def new
    if user_signed_in?
      @dare = Dare.new
    else
      redirect_to new_user_session_path
    end
  end
  
  def create
     if user_signed_in?
     @dare = Dare.new(params[:dare])
     @dare.save
     current_user.dares << @dare
     current_user.save
     redirect_to dare_index_path
    else
      redirect_to new_user_session_path
    end
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
