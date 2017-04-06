class CreateFavouriteLists < ActiveRecord::Migration[5.0]
  def change
    create_table :favourite_lists do |t|
      t.references :list, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
