class User < ApplicationRecord
  has_many :challenges, through: :challenge_members
  has_many :rankings

  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: { challenge_member: 0, moderator: 1, jury: 2, admin: 3 }
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :challenge_member
  end
end
