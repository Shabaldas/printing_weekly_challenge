# frozen_string_literal: true

module DatabaseSeeds
  module Dummy
    class UsersSeed
      def execute
        create_users_challenge_members
        create_juries
      end

      private

      def create_users_challenge_members
        (1..30).each do |id|
          User.new(
            id:,
            last_name: Faker::Name.last_name,
            first_name: Faker::Name.first_name,
            nick_name: Faker::Internet.username(specifier: 5..10),
            email: "printer_#{::User.last&.id.to_i.next}@mail.com",
            password: '123456abc@'
          ).tap do |user|
            user.save! if does_not_exist?(user.id)
          end
        end
      end

      def create_juries
        (31..38).each do |id|
          User.new(
            id:,
            last_name: Faker::Name.last_name,
            first_name: Faker::Name.first_name,
            role: 'jury',
            nick_name: Faker::Internet.username(specifier: 5..10),
            email: "jury#{::User.last&.id.to_i.next}@mail.com",
            password: '123456abc@',
            avatar:
          ).tap do |user|
            user.save! if does_not_exist?(user.id)
          end
        end
      end

      def does_not_exist?(id)
        !User.exists?(id:)
      end

      def avatar
        Rack::Test::UploadedFile.new(Rails.root.join("app/assets/images/jury#{[1, 2, 3].sample}.png"), 'image/png')
      end
    end
  end
end
