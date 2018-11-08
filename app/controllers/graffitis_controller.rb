class GraffitisController < ApplicationController
  def show
  	@userme = current_user
  end

  def new
  	@userme = current_user
    @user = User.find(current_user.id)
    @graffiti = Graffiti.new
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
      params.require(:graffiti).permit(:user_id, :graffiti_image_id, :graffiti_text)
    end


end
