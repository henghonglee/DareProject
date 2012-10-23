class UserController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user = current_user
  end

  def show
    
  end

  def destroy
  end

  def update
  end

  def edit
  end
end
