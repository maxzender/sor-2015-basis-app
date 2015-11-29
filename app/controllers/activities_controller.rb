class ActivitiesController < ApplicationController

  before_action :authenticate_user!, only: :update_current_track

  def stream
    @users = User.listening
  end

  def update_current_track
    title = Title.find(params[:id])
    user = current_user
    user.current_track = title
    user.save
    redirect_to title.artist
  end
end
