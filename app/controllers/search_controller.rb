class SearchController < ApplicationController

	def find
		@locations = Location.where("name LIKE :query OR city LIKE :query", query: "%#{params[:q]}%")
		@artists = Artist.where("name LIKE ?","%#{params[:q]}%")
		@titles = Title.where("title LIKE :query OR album_name LIKE :query OR year LIKE :query", query: "%#{params[:q]}%")
	end
end