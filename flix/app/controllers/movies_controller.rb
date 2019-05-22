class MoviesController < ApplicationController
  def index
    # @movies = ["Iron Man", "Superman", "Spider-Man", "Batman"]
    @movies = Movie.all
  end
end
