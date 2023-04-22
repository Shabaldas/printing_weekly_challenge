# frozen_string_literal: true

module ChallengeMembers
  module ParticipationsWizard
    class GeneralsController < BaseController
      def new
        @challenge_member = ChallengeMember.new
      end
    end
  end
end
