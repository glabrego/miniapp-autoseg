class AddTaskToTodo < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :task, :text
  end
end
