class FavouritesController < ApplicationController
	before_action :new

	def new
		@favourite = Favourite.new
	end

	def create
		@favourite = Favourite.new(params.require(:favourite).permit(:user_id, :list_id))
		if @favourite.save
		    redirect_to root_path, notice: "List was successfuly created!"
  	    else
  		    redirect_to root_path, notice: "Could not favourite this list!"
  		end
  	end
end
