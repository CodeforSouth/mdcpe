class PermitsController < ApplicationController
  def home
  end

  def help
  end

  def show_business
    @items
    @categories = Category.all
    @codes = Permit.where(proposedusedescription: @items).select(:categories).distinct.pluck(:categories)
  end
  def self.permits_for category
    Permit.where(proposedusedescription: category).select(:categories).distinct.pluck(:categories)
  end

  def show_permits
  end
end
