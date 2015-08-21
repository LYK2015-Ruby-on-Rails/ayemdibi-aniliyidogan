class DirectorsController < ApplicationController

  before_action :set_director, only: [:show]

  def index
    @directors = Director.all
  end

  def show
    @movies = @director.movies
    @actor_movies = @director.movies
  end


  private
  def set_director
    @director = Director.friendly.find(params[:id])
  end

end
