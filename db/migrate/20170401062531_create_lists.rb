class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :public
      t.boolean :close

      t.timestamps
    end
  end
end
