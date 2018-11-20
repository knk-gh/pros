class FavoriteVenuesController < ApplicationController

  def create
    @venue = Venue.find(params[:venue_id])
    favorite_venue = current_user.favorite_venues.new(venue_id: @venue.id)
    favorite_venue.save
    redirect_to homes_useful_path
  end

  def destroy
    @venue = Venue.find(params[:venue_id])
    favorite_venue = current_user.favorite_venues.find_by(venue_id: @venue.id)
    favorite_venue.destroy
    redirect_to homes_useful_path
  end


# ------------------------------------------------------------------------------

  private

    def set_variables
    @venue = Venue.find(params[:venue_id])
    @id_name = "#favorite_venue-link-#{@venue.id}"
  end

end
