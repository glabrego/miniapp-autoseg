class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.references :user_id, foreign_key: true
      t.references :list_id, foreign_key: true

      t.timestamps
    end
  end
end
