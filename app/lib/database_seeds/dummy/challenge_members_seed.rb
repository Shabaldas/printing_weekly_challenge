# frozen_string_literal: true

module DatabaseSeeds
  module Dummy
    class ChallengeMembersSeed
      def execute
        create_challenge_members
        # create_finnished_challenges
        # create_in_progress_challenges
      end

      private

      def create_challenge_members
        # Finished challenges
        finished_challenges = Challenge.first(10)
        users = User.first(30)

        finished_challenges.each do |challenge|
          ap '<<<<'
          ap challenge.candidates
          ap '<<<<'
          # ap user = users.detect { |u| u.id == challenge.user_id }
        end

      end
    end
  end
end

# .tap do |challenge|
#   (1..challenge.candidates).each do |candidate_count|
#     challenge.challenge_members.new(
#       user: User.first(30).sample,
#       approved: true, 
#       rankings: (0..100).to_a.sample,
#     ).tap do |challenge_member|
#       challenge_member.save if challeng_members_does_not_exist?(challenge_member.challenge_id, challenge_member.user_id)
#     end
#   end