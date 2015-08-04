class PermitsController < ApplicationController
  def home
    @categories = Category.all
  end

  def help
  end
end
