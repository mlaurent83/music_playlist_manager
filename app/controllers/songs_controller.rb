class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      flash[:notice] = "Song created successfully."
      redirect_to song_path(@song)
    else
      flash.now[:alert] = "Error creating song."
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      flash[:notice] = "Song updated successfully."
      redirect_to song_path(@song)
    else
      flash.now[:alert] = "Error updating song."
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song deleted successfully."
    redirect_to songs_path, status: :see_other
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist, :album)
  end
end
