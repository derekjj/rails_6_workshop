class MoviesController < ApplicationController
  def index
    # @movies = ["Iron Man", "Superman", "Spider-Man", "Batman"]
    # @movies = Movie.all
    # @movies = Movie.upcoming
    @movies = Movie.released
  end

  def show
    @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie, notice: "Movie Updated!"
    else
      render :edit
    end
  end

  def new
    @movie = Movie.new
   end

  def create  
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: "Movie Created!"
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_url, danger: "I'm sorry, Dave, I'm afraid I can't do that!"
  end


  private
  def movie_params
    params.require(:movie).
      permit(:title, :description, :rating, :released_on, :total_gross,
            :director, :duration, :image_file_name)
  end
end
