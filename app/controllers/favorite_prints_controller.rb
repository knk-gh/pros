class FavoritePrintsController < ApplicationController

  def create
    @print = Print.find(params[:print_id])
    favorite_print = current_user.favorite_prints.new(print_id: @print.id)
    favorite_print.save
    redirect_to homes_useful_path
  end

  def destroy
    @print = Print.find(params[:print_id])
    favorite_print = current_user.favorite_prints.find_by(print_id: @print.id)
    favorite_print.destroy
    redirect_to homes_useful_path
  end


# ------------------------------------------------------------------------------

  private

    def set_variables
    @print = Print.find(params[:print_id])
    @id_name = "#favorite_print-link-#{@print.id}"
  end

end
