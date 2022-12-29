class Challenge < ApplicationRecord
  has_many :members, class_name: 'User', through: :challenge_members
  has_many :challenge_members

  enum status: [:finnished, :in_progress, :upcoming, :archived]
  enum technology: [:fdm, :sla, :sls]
  enum participation: [:free, :paid]
end
