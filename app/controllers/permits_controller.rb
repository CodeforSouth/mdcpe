class PermitsController < ApplicationController
  def home
    @categories = Category.all
  end

  def help
  end

  def results
  end
end
