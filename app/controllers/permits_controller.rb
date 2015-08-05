class PermitsController < ApplicationController
  def home
  end

  def help
  end

  def show_business
    @business_types = BusinessType.all
  end

  def show_permits
  end
end
