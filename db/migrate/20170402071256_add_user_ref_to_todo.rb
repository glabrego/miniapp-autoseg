class AddUserRefToTodo < ActiveRecord::Migration[5.0]
  def change
    add_reference :todos, :user, foreign_key: true
  end
end
