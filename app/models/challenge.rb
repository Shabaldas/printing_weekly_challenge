class Challenge < ApplicationRecord
  has_many :members, class_name: 'User', through: :challenge_members
  has_many :challenge_members

  enum status: { finnished: 0, in_progress: 1, upcoming: 2, archived: 3 }
  enum technology: { fdm: 0, sla: 1, sls: 2 }
  enum participation: { free: 0, paid: 1 }
end
