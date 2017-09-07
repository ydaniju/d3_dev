class ArtistsController < ApplicationController
  before_filter :find_artist

  def show
    send_data @artist.serialize
  end

  def find_artist
    @artist = Artist.find_by(id: params[:id])
  end

end
