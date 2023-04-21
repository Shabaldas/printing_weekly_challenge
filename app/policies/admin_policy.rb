# frozen_string_literal: true

class AdminPolicy < ApplicationPolicy
  def access?
    return nil if user.nil?

    user.admin?
  end
end
