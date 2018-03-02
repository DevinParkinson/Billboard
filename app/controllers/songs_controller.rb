class SongsController < ApplicationController
  before_action :set_artist

  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to chart_artist_path(@artist.chart_id, @artist)
    else
      render :new
    end
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def song_params
      params.require(:comment).permit(:body)
    end
end