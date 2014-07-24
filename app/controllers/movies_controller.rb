class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def new
  end

  def create
    @movie = Movie.new
    @movie.movie_url = params[:movie_url]
    @movie.image_url = params[:image_url]

    if @movie.save
      redirect_to "/movies"
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.movie_url = params[:movie_url]
    @movie.image_url = params[:image_url]

    if @movie.save
      redirect_to "/movies/"
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy


    redirect_to "/movies"
  end
end
