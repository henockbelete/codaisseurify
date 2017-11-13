class SongsController < ApplicationController

    # before_action :set_artist, only: [:index, :show, :new]
    # before_action :set_song, :only => [:new, :create]
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
      redirect_to(page_path(@song))


    else
      render('new')
    end
  end



  def destroy
     @song = Song.find(params[:id])
     @song.destroy
     redirect_to songs_path
  end

    private

      # def set_artist
      #    @artist = Artist.find(params[:id])
      # end

      def song_params
        params
        .require(:song)
        .permit(:genre, :song_name, :duration, :song_url, :artist_id)
      end

  end

#

#
