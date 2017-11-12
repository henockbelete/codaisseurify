class SongsController < ApplicationController

  def index
    @songs = Song.all
  end


  def show
      @song = Song.find(params[:id])

  end

  def new
    @artist = Artist.find(params[:id])
    @song = @artist.songs.build
  end

  def create
     @artist =Artist.find(params[:id])
     @song = @artist.songs.build(params[:song])

     if @song.save

       flash[:notice] = "Song created successfully."
        redirect_to new_song_path(:id => @artist.id)
     else
        render 'new'
     end
  end

  def delete
     @song = Song.find
  end
  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:genre, :song_name, :duration, :song_url, :artist_id)
  end


end
