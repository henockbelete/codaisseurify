class ArtistsController < ApplicationController



  def index

    @artists = Artist.order_by_name
    # @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
    # @song = Song.new(:artist_id => @artist.id) (may be this should be done now)

  end

  # def new
  #   @artist = Artist.new({:name => 'Default'})
  # end

  # def create
  #   # Instantiate a new object using form parameters
  #   @artist = Artist.new(artist_params)
  #   # Save the object
  #   if @artist.save
  #     # If save succeeds, redirect to the index action
  #     flash[:notice] = "artist created successfully."
  #     redirect_to(artists_path)
  #   else
  #     # If save fails, redisplay the form so user can fix problems
  #     render('new')
  #   end
  # end

  # def edit
  #   @artist = artist.find(params[:id])
  # end

  def update
    # Find a new object using form parameters
    @artist = artist.find(params[:id])
    # Update the object
    if @artist.update_attributes(artist_params)
      # If save succeeds, redirect to the show action
      flash[:notice] = "Artist updated successfully."
      redirect_to(artist_path(@artist))
    else
      # If save fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  # def delete
  #   @artist = artist.find(params[:id])
  # end

  def destroy
    @artist = artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "artist destroyed successfully."
    redirect_to(artists_path)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :age, :nationality, :image_url)
  end



end
