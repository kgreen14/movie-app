class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    form_movie = params[:movie]
    @movie = Movie.create!(title: form_movie[:title], genre: form_genre[:genre], year: form_movie[:year])
    redirect_to "/movies/#{@movie.id}"
  end
end
