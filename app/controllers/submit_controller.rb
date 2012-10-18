class SubmitController < ApplicationController
  # this controller is only for logged in users
  def index
  end

  def show
  end

  def create
    @submit = Submit.new(params[:submit])
    @dare = Dare.find(params[:id]) 
    @submit.save
    @dare.submits << @submit
    @dare.save
    #go back to the dare.id
  end

  def new
    @submit = Submit.new
    @objectId = params[:id]
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
