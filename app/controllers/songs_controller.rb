class SongsController < ApplicationController

    before_action :find_artist

    def index
      @songs = @artist.songs
      @song = Song.new(:artist_id => @artist.id)
    end

    def show
      @song = Song.find(params[:id])

    end

    def new
      @song = Song.new(:artist_id => @artist.id)
    end

    def create
      @song = Song.new(song_params)
      @song.artist = @artist
      if @song.save
        flash[:notice] = "Song created successfully."
        redirect_to(songs_path(:artist_id => @artist.id))
      else
        render('new')
      end
    end

    def edit
      @song = Song.find(params[:id])
    end

    def update
      @song = Song.find(params[:id])
      if @song.update_attributes(song_params)
        flash[:notice] = "song updated successfully."
        redirect_to(song_path(@song, :artist_id => @artist.id))
      else
        render('edit')
      end
    end

    # def delete
    #   @song = Song.find(params[:id])
    # end

    def destroy
      @song = Song.find(params[:id])
      @song.destroy
      flash[:notice] = "Song destroyed successfully."
      redirect_to(songs_path(:artist_id => @artist.id))
    end

    private

      def song_params
        params
        .require(:song)
        .permit(:genre, :song_name, :duration, :song_url, :artist_id)
     end



    def find_artist
      @artist = Artist.find(params[:artist_id])
    end



end
