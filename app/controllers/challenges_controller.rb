class ChallengesController < ApplicationController
  before_action :find_challenges, only: [:index]
  before_action :find_data, only: [:show]
  helper_method :state

  def index; end

  def show; end

  private

  def state
    case params[:state]
    when 'finnished'
      :finnished
    when 'in_progress'
      :in_progress
    end
  end

  def find_challenges
    @challenges = Challenge.all
    case state
    when :finnished
      @challenges = @challenges.finnished
    when :in_progress
      @challenges = @challenges.in_progress
    end
  end

  def find_data
    @challenge = Challenge.find(params[:id])
  end
end
