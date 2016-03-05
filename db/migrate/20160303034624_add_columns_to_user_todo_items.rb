class AddColumnsToUserTodoItems < ActiveRecord::Migration
  def change
  	add_column :user_todo_items, :item, :string
  	add_column :user_todo_items, :description, :text
  end
end
