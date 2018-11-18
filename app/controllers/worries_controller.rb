class WorriesController < ApplicationController
  def create
  	@user = User.find(params[:user_id])
	@progress = Progress.find(params[:progress_id])
	worry = current_user.worries.new(progress_id: @progress.id)
	worry.save
	redirect_to user_progress_path(user_id: @user.id, id: @progress.id)
  end

  def destroy
  	@user = User.find(params[:user_id])
    @progress = Progress.find(params[:progress_id])
    worry = current_user.worries.find_by(progress_id: @progress.id)
    worry.destroy
    redirect_to user_progress_path(user_id: @user.id, id: @progress.id)
  end


# ------------------------------------------------------------------------------

  private

    def set_variables
		@progress = Progress.find(params[:progress_id])
		@id_name = "#worry-link-#{@progress.id}"
	end

end
