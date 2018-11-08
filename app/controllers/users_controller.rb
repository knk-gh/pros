class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @userme = User.find(params[:id])
  end

  def edit
    @userme = current_user
    @user = User.find(params[:id])
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




# ------------------------------------------------------------------------------

  private

    def user_params
      params.require(:user).permit(:name, :user_image, :profile, :twitter_url, :pixiv_url, :status)
    end


end
