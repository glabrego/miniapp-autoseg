class AddCompletedAtToTodo < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :completed_at, :date
  end
end
