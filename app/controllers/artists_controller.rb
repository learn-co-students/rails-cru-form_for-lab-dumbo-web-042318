class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :delete]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render "edit"
    end
  end

  def delete
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
