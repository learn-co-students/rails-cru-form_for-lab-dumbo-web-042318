class ArtistsController < ApplicationController

  before_action :set_artists, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def show

  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
      if @artist.save
        redirect_to artist_path(@artist)
      else
        render 'new'
      end
  end

  def edit

  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      render 'edit'
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def set_artists
    @artist = Artist.find(params[:id])
  end

end
