class RelationshipsController < ApplicationController

  def create
    @user = User.find(params[:relationship][:following_id])
    current_user.follow!(@user)
    redirect_to @user, notice:'登録されました'
  end

  def destroy
    @user = Relationship.find(params[:id]).following
    current_user.unfollow!(@user)
    redirect_to @user, notice:'解除しました'
  end

# -------------------------------------------------------------------------
private

    def create_params
        params.permit(:following_id).merge(follower_id: current_user.id)
    end


end
