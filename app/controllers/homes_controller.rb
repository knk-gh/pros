class HomesController < ApplicationController
  def index
  end

  def about
  end

  def goodbye
  end

  def useful
  	@userme = current_user
  	@prints = Print.all
  end
end
