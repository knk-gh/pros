class VenuesController < ApplicationController
  def show
    @userme = current_user
  end

  def new
    @userme = current_user
  end

  def create
  end

  def edit
    @userme = current_user
  end

  def update
  end

  def destroy
  end
end
