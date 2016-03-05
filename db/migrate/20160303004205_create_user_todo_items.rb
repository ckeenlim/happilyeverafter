class CreateUserTodoItems < ActiveRecord::Migration
  def change
    create_table :user_todo_items do |t|
      t.references :user, index: true, foreign_key: true
      t.references :todo_item, index: true, foreign_key: true
      t.timestamp :completed_at

      t.timestamps null: false
    end
  end
end
