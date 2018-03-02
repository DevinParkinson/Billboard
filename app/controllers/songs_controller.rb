class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_chart

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

    def set_chart
      @chart = Chart.find(params[:chart_id])
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def song_params
      params.require(:song).permit(:name)
    end
end
