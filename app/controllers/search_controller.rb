class SearchController < ApplicationController

	def find
		@results = Location.where("name LIKE ?", "%#{params[:q]}%")
	end

end