# frozen_string_literal: true

module ChallangeJuries
  class BaseController < ApplicationController
    layout 'jury'
    before_action :authorize_jury

    private

    def authorize_jury
      authorize :jury, :access?
    end
  end
end
