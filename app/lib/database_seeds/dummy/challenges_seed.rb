# frozen_string_literal: true

module DatabaseSeeds
  module Dummy
    class ChallengesSeed
      def execute
        create_finnished_challenges
        create_in_progress_challenges
      end

      private

      def create_finnished_challenges
        (1..10).each do |id|
          Challenge.new(
            id: id,
            title: Faker::Lorem.sentence(word_count: 7),
            description: Faker::Lorem.paragraph_by_chars(number: 125),
            candidates: (10..30).to_a.sample,
            max_candidates_size: 30,
            gift: (50..200).to_a.sample.round(-1),
            status: 'finnished',
            technology: 'fdm',
            participation: ['free', 'paid'].sample,
            duration: (DateTime.now - 10.week) + 6.days,
            created_at: DateTime.now - id.week
          ).tap do |challenge|
            challenge.save! if does_not_exist?(challenge.id)
          end
        end
      end

      def create_in_progress_challenges
        (11..12).each do |id|
          Challenge.new(
            id: id,
            title: Faker::Lorem.sentence(word_count: 7),
            description: Faker::Lorem.paragraph_by_chars(number: 125),
            candidates: (10..30).to_a.sample,
            max_candidates_size: 30,
            gift: (50..200).to_a.sample.round(-1),
            status: 'in_progress',
            technology: 'fdm',
            participation: ['free', 'paid'].sample,
            duration: DateTime.now + 7.days,
            created_at: DateTime.now
          ).tap do |challenge|
            challenge.save! if does_not_exist?(challenge.id)
          end
        end
      end

      def does_not_exist?(id)
        !Challenge.exists?(id: id)
      end
    end
  end
end