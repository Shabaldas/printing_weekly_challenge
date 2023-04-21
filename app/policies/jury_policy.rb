# frozen_string_literal: true

class JuryPolicy < ApplicationPolicy
  def access?
    return nil if user.nil?

    user.jury?
  end
end
