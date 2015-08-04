class PermitsController < ApplicationController
  def home
  end

  def help
  end

  def show_business
    @categories = Category.all
  end

  def show_permits
  end
end
