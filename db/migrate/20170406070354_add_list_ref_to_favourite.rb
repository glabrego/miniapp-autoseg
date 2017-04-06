class AddListRefToFavourite < ActiveRecord::Migration[5.0]
  def change
    add_reference :favourites, :list, foreign_key: true
  end
end
