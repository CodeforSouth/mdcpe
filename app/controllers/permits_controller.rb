class PermitsController < ApplicationController
  def home
    @permits = Permit.first
  end

  def help
  end
end
