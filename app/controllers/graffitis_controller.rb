class GraffitisController < ApplicationController
  before_action :authenticate_user!

  def index
    @user  = User.find(params[:user_id])
    @graffitis = @user.graffitis.page(params[:page]).per(10).order(id: :desc)
  end

  def show
    @user = User.find(params[:user_id])
    @graffiti = Graffiti.find(params[:id])
    # .order(id: :desc)
    render layout: false
  end

  def new
    @user = User.find(current_user.id)
    @graffiti = Graffiti.new
    @graffitis = Graffiti.where(user_id: @user.id)
  end

  def create
    @graffiti = Graffiti.new(graffiti_params)
    @graffiti.user_id = current_user.id
    if @graffiti.save
      redirect_to user_path(current_user), notice:'投稿しました'
    else
    render :new
    end
  end

  def destroy
    @graffiti = Graffiti.find(params[:id])
    @graffiti.destroy
    redirect_to user_path(current_user), notice:'削除しました'
  end

# ------------------------------------------------------------------------------

  private
    def graffiti_params
      params.require(:graffiti).permit(:user_id, :graffiti_image, :graffiti_text)
    end


end
