class RemoveTaksFromTodo < ActiveRecord::Migration[5.0]
  def change
  	remove_column :todos, :taks
  end
end
