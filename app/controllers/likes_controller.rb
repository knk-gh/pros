class LikesController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@progress = Progress.find(params[:progress_id])
		like = current_user.likes.new(progress_id: @progress.id)
		like.save
		redirect_to user_progress_path(user_id: @user.id, id: @progress.id)
	end
	def destroy
		@user = User.find(params[:user_id])
	    @progress = Progress.find(params[:progress_id])
	    like = current_user.likes.find_by(progress_id: @progress.id)
	    like.destroy
	    redirect_to user_progress_path(user_id: @user.id, id: @progress.id)
	end


# ------------------------------------------------------------------------------

  private

    def set_variables
		@progress = Progress.find(params[:progress_id])
		@id_name = "#like-link-#{@progress.id}"
	end


end
