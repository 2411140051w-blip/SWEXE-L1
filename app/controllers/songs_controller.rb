class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.new(title: params[:song][:title], artist: params[:song][:artist], lyric: params[:song][:lyric])
    song.save
    redirect_to '/'
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    redirect '/'
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(title: params[:song][:title], artist: params[:song][:artist], lyric: params[:song][:lyric])
    redirect_to '/'
  end
end
