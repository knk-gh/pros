class PrintsController < ApplicationController
  def new
    @userme = current_user
    @print = Print.new
  end

  def create
    @print = Print.new(print_params)
    @print.user_id = current_user.id
    if @print.save
      redirect_to homes_useful_path, notice:'登録しました'
    else
    render :new
    end
  end

  def edit
    @userme = current_user
    @print = Print.find(params[:id])
  end

  def update
    @print = Print.find(params[:id])
    if @print.update(print_params)
      redirect_to homes_useful_path, notice:'変更しました'
    else
    render :edit
    end
  end

  def destroy
    @print = Print.find(params[:id])
    @print.destroy
    redirect_to homes_useful_path, notice:'削除しました'
  end

# ------------------------------------------------------------------------------

  private
    def print_params
      params.require(:print).permit(:company, :company_url, :user_id)
    end


end
