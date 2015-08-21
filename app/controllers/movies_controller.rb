class MoviesController < ApplicationController

before_action :set_movie, only: [:show]


def index
  @movies = Movie.all
end

def show
  @categories =@movie.categories
  @actors = @movie.actors
  @directors = @movie.directors
end

private
def set_movie
      @movie = Movie.friendly.find(params[:id])
end
end
