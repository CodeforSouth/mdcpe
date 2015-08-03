class PermitsController < ApplicationController
  def home
    @permits = Permit.first
  end

  def help
  end

  def main
    @categories = Category.all
  end
end
