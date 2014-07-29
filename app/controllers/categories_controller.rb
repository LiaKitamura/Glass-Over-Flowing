class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  # def grouped
  #   @grouped = @categories.in_groups_of(7, false)
  # end
end
