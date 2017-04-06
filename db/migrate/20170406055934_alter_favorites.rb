class AlterFavorites < ActiveRecord::Migration[5.0]
  def change
  	drop_table :favourites

  	  create_table :favourites do |t|
      t.references :favourited, polymorphic: true, index: true
      t.references :user, index: true

      t.timestamps
  end
  end
end
