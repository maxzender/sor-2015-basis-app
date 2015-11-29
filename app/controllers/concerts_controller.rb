class ConcertsController < ApplicationController

  def index
    @concerts = Concert.order(:date)
  end

  def new
    @concert = Concert.new
    @artists = Artist.all
    @locations = Location.all
  end

  def create
    @concert = Concert.new(params[:concert])
    if @concert.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end
end
