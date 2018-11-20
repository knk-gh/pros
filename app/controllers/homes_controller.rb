class HomesController < ApplicationController
  def index
  end

  def about
  end

  def goodbye
  end

  def useful
  	@prints = Print.all
    @venues = Venue.all
    @user = current_user
    @users = User.search(params[:search])
    @progresses = Progress.search(params[:search])
  end

  def search
    @progresses = Progress.all
    @users = User.where(status: 2)




  end


end
