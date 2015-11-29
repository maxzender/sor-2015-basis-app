class TitlesController < ApplicationController
  before_action :load_artist

  def create
    title = Title.new(params[:title])
    @artist.titles << title
    redirect_to @artist
  end

  private
  def load_artist
    @artist = Artist.find(params[:artist_id])
  end
end
