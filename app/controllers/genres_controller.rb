class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :delete]

  def index
    @genres = Genre.all
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @genre.update(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render "edit"
    end
  end

  def delete
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
