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
      @song.artist = @artist

          if @song.save
            redirect_to song_path(:artist_id => @artist.id)
          else
            render :new
          end
      end

      def destroy
       @song = Song.find(params[:id])
       @song.destroy
       redirect_to songs_path
      end

    private

      def song_params
        params
        .require(:song)
        .permit(:genre, :song_name, :duration, :song_url, :artist_id)
     end

end
