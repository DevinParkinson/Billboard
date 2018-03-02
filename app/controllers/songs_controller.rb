class SongsController < ApplicationController
  before_action :set_chart
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @chart.songs
  end

  def show
  end

  def edit
  end

  def new
    @song = @chart.songs.new
  end

  def create
    @song = @chart.songs.new(song_params)
    if @song.save
      redirect_to [@chart, @song]
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to [@chart, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to chart_songs_path
  end

  private

  def set_chart
      @chart = Chart.find(params[:chart_id])
    end

  def set_song
    @song = Song.find(params[:id])
  end


  def song_params
    params.require(:song).permit(:name)
  end
  end
