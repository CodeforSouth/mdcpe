class PermitsController < ApplicationController
  def home
    @business_types = BusinessType.all
  end

  def show_permits
    @business = BusinessType.find_by_name(params[:name])
    @total
  end
end
