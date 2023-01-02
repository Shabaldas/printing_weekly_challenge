class JuriesController < ApplicationController
  def index
    @juries = User.jury
  end

  def show
    @jury = User.find_by(params: id)
  end
end
