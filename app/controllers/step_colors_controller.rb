class StepColorsController < ApplicationController

  def update
  	@progress = Progress.find(params[:id])
  	@step_color = StepColor.find(@progress.id)
    @step_color.update(step_color_params)
  end

  def destroy
  end



# ------------------------------------------------------------------------------

  private

    def step_color_params
      params.require(:step_color).permit(:progress_id, :color)
    end


end
