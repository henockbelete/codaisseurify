class SongsController < ApplicationController

    before_action :find_artist

    # def index
    #   @songs = @artist.songs
    #   @song = Song.new(:artist_id => @artist.id)
    # end
    #
    # def show
    #   @song = Song.find(params[:id])
    # end


    def index
         @song = Song.new
         @songs =@artist.songs

       format.html { redirect_to songs_path(:artist_id => @artist.id) }
       format.json { render :index, status: :list, location: @artist.id }

    end

    def show
      @song = Song.find(params[:id])
      format.html { redirect_to songs_path(:artist_id => @artist.id) }
      format.json { render :show, status: :list, location: @artist.id }
    end

    def new
      @song = Song.new(:artist_id => @artist.id)
    end

    def create
        @song = Song.new(song_params)
        @song.artist = @artist
        respond_to do |format|
          if @song.save
            format.html { redirect_to songs_path(:artist_id => @artist.id), notice: 'Song was successfully created.' }
            format.json { render :show, status: :created, location: @song }
          else
            format.html { redirect_to songs_path(:artist_id => @artist.id)}
            format.json { render json: @song.errors, status: :unprocessable_entity }
          end
        end
      end


    def destroy
      @song = Song.find(params[:id])
      @song.destroy
      format.html { redirect_to songs_path(:artist_id => @artist.id), notice: 'Song was successfully deleted.' }
      format.json { render :delete, status: :deleted, location: @song }

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
