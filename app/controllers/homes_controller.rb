class HomesController < ApplicationController
  def index
  end

  def about
  end

  def goodbye
  end

  def useful
  	@prints = Print.all
  end
end
