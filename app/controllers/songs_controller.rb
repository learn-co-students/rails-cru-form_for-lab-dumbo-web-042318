class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :edit, :delete]

  def index
    @songs = Song.all
  end

  def show
    @genre = @song.genre
    @artist = @song.artist
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    if @song.save
      redirect_to @song
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @song.update(song_params)
    if @song.save
      redirect_to @song
    else
      render "edit"
    end
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
