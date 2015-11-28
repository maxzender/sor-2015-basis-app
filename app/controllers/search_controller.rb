class SearchController < ApplicationController

	def find
		@locations = Location.where("name LIKE ? OR city LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
		@artists = Artist.where("name LIKE ?","%#{params[:q]}%")
		@titles = Title.where("title LIKE ? OR album_name LIKE ? OR year LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%")
	end
end