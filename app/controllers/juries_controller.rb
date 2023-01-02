class JuriesController < ApplicationController
  def index
    @juries = User.jury
  end

  def show
    @jury = User.find(params[:id])
  end
end
