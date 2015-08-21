class ActorsController < ApplicationController

  before_action :set_actor, only: [:show]

  def index
    @actors = Actor.all
  end

  def show
    @movies = @actor.movies
    @directed_movies = @actor.directors

  end

  private
  def set_actor
      @actor = Actor.friendly.find(params[:id])
  end
end
