require 'rails_helper'

RSpec.describe FavouriteList, type: :model do
  it "validates presence of user"
  	user = User.new
  	list = List.new
  	user.favourites << list
  	favourited_list = user.favourites.last
  	favourited_list.should validate_presence_of(:user_id)
  end

  it "validates presence of user"
  	user = User.new
  	list = List.new
  	user.favourites << list
  	favourited_list = user.favourites.last
  	favourited_list.should validate_presence_of(:list_id)
  end
end
