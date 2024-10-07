class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      flash[:notice] = "Playlist created successfully."
      redirect_to playlist_path(@playlist)
    else
      flash.now[:alert] = "Error creating playlist."
      render :new
    end
  end

  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update(playlist_params)
      flash[:notice] = "Playlist updated successfully."
      redirect_to playlist_path(@playlist)
    else
      flash.now[:alert] = "Error updating playlist."
      render :edit  # Assuming you have an edit action/view
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    flash[:notice] = "Playlist deleted successfully."
    redirect_to playlists_path, status: :see_other
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :description, :user_id) # Add any additional attributes you have
  end
end
