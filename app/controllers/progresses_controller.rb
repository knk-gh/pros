class ProgressesController < ApplicationController

  require 'colormodule'
  include Color

  def index
    @userme = current_user
  end

  def show
    @user = User.find(params[:user_id])
    @userme = current_user
    @progress = Progress.find(params[:id])
    @step = Step.where(progress_id: @progress.id)
    gon.yoko = @progress.steps.count * 90
    #javaに渡す変数
    # ↓プログレスバー
    all_step_colors_count = @progress.step_colors.count
    progress_count = StepColor.where(progress_id: @progress.id, color: 1).count
    @answer_valuenow = progress_count.to_f / all_step_colors_count.to_f * 100
    gon.answer_valuenow = @answer_valuenow
    # ↓カウントダウン
    gon.time = @progress.dead_line
  end

  def new
    @userme = current_user
    @user = User.find(current_user.id)
    @progress = Progress.new
    @step = @progress.steps.build
  end

  def create
    @progress = Progress.new(progress_params)
    @progress.user_id = current_user.id
    if @progress.save
      color_table
      redirect_to user_progress_path(user_id: current_user.id, id: @progress.id), notice:'登録しました'
    else
    render :new
    end
  end

  def edit
    @userme = current_user
    @progress = Progress.find(params[:id])
    @step_color = StepColor.find(@progress.id)
    @step = Step.where(progress_id: @progress.id)
    gon.yoko = @progress.steps.count * 90
  end

  def update
    @progress = Progress.find(params[:id])
    if @progress.update(progress_params)
    redirect_to user_progress_path(user_id: current_user.id, id: @progress.id), notice:'更新しました'

    end
  end

  def destroy
  end

# ------------------------------------------------------------------------------

  private
    def progress_params
      params.require(:progress).permit(:user_id, :work_name, :dead_line, :event, :message, :page, :private,
        steps_attributes: [:id, :step_name, :_destroy],
        step_colors_attributes: [:id, :color, :_destroy]
        )
    end


end
