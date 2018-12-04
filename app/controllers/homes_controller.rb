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
    @progresses = Progress.where(private: 0).order(id: :desc)
    @users = User.eager_load(:progresses).where(status: 2).where("progresses.private <= ?", 0).order('random()').limit(7).includes(:progresses)
  end

  def search_after
    @users = User.search(params[:search])
    @progresses = Progress.search(params[:search])
  end

  def pro_all
    @progresses = Progress.where(private: 0).page(params[:page]).page.per(15).order(id: :desc)
  end


end