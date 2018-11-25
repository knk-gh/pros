class UsersController < ApplicationController
  require 'progress'
  def index
    @users = User.all
  end

  def show
    @user  = User.find(params[:id])
    @graffitis = Graffiti.where(user_id: @user.id).order(id: :desc)
    @progress = Progress.where(user_id: @user.id)
    @print = Print.all
    @favorite_prints = FavoritePrint.where(user_id: @user.id)
    @favorite_venues = FavoriteVenue.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
    @graffitis = Graffiti.where(user_id: @user.id)
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user), notice:'更新しました'
    else
    render :edit
    end
  end

  def destroy
    if @users == current_user
      redirect_to users_path
    else
      @users = User.find(params[:id])
      @users.destroy
      redirect_to users_path, notice:'ユーザー削除をしました'
    end
  end

  def favp
      @user  = User.find(params[:id])
      @print = @user.followings
      render 'show'
  end

  def following
      @user  = User.find(params[:id])
      # @users = @user.followings
      @users = User.page(params[:page]).per(10)
      render 'show_follow'
  end

  def followers
      @user  = User.find(params[:id])
      @users = @user.followers
      render 'show_follower'
  end




# ------------------------------------------------------------------------------

  private

    def user_params
      params.require(:user).permit(:name, :user_image, :profile, :twitter_url, :pixiv_url, :status, :report)
    end


end
