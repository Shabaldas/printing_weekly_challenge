# frozen_string_literal: true

module DatabaseSeeds
  module Dummy
    class ChallengeMembersSeed
      def execute
        create_challenge_members
      end

      private

      def create_challenge_members
        Challenge.all.each do |challenge|
          (1..challenge.candidates).each do |_n|
            ChallengeMember.where(challenge_id: challenge.id, user: User.challenge_member.sample.id, approved: true).first_or_create
          end
          challenge.update(candidates: challenge.challenge_members.count)
        end
      end
    end
  end
end
