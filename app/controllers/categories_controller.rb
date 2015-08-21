class CategoriesController < ApplicationController

  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
  end

  def show
    @movies = @category.movies
  end

  private
  def set_category
    @category = Category.friendly.find(params[:id])
  end

end
