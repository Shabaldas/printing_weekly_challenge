# frozen_string_literal: true

module ChallengeJuries
  class DashboardController < BaseController
    def index
      @users_count = User.count
    end
  end
end
