class AddListRefToTodo < ActiveRecord::Migration[5.0]
  def change
    add_reference :todos, :list, foreign_key: true
  end
end
