class HomesController < ApplicationController
  before_action :authenticate_user!, only: [:useful, :search, :search_after, :pro_all, :goodbye]
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
  end

  def search
    @progresses = Progress.all.order(id: :desc)
    @users = User.where(status: 2).order('random()').limit(7).includes(:progresses)
    # @users = Post.all.includes(:places)
  end

  def search_after
    @users = User.search(params[:search])
    @progresses = Progress.search(params[:search])
  end

  def pro_all
    @progresses = Progress.page(params[:page]).page.per(15).order(id: :desc)
  end


end