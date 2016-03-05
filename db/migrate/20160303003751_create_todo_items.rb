class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :item
      t.text :description

      t.timestamps null: false
    end
  end
end
