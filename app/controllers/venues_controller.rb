class VenuesController < ApplicationController
  def show
    @userme = current_user
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user_id = current_user.id
    if @venue.save
      redirect_to venue_path(@venue.id), notice:'登録しました'
    else
    render :new
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    if @venue.update(venue_params)
      redirect_to venue_path(@venue.id), notice:'変更しました'
    else
    render :edit
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to homes_useful_path, notice:'削除しました'
  end


# ------------------------------------------------------------------------------

  private
    def venue_params
      params.require(:venue).permit(:venue_name, :postal_code, :address, :tel, :venue_url, :latitude, :longitude, :user_id)
    end


end
