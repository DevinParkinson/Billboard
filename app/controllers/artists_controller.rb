class ArtistsController < ApplicationController
  before_action :set_song
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def new
    @artist = @song.artists.new
  end

  def create
    @artist = @song.artists.new(artist_params)
    if @artist.save
      redirect_to board_song_path(@song)
    else
      render :new
    end
  end

  private

  def set_song
    @song = Song.find(params[:song_id])
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end


  def artist_params
    params.require(:artist).permit(:name, :song_id)
  end
end