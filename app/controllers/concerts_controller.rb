class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
    @artists = Artist.all
    @locations = Location.all
  end

end