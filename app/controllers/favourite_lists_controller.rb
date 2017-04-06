class FavouriteListsController < ApplicationController
	before_action :authenticate_user!

	def index
		@favourited_lists = FavouriteList.all
		@lists = List.all
		@users = User.all
	end

end
