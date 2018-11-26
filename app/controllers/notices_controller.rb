class NoticesController < ApplicationController
  before_action :authenticate_user!
  def index
    @notices = Notice.page(params[:page]).per(15).order(id: :desc)
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.user_id = current_user.id
    if @notice.save
      redirect_to notices_path, notice:'投稿しました'
    else
    render :new
    end
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    if @notice.update(notice_params)
      redirect_to notices_path, notice:'変更しました'
    else
    render :edit
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    redirect_to notices_path, notice:'削除しました'
  end

# ------------------------------------------------------------------------------

  private
    def notice_params
      params.require(:notice).permit(:category, :text, :user_id)
    end



end
