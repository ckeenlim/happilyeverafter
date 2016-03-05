class TodoItem < ActiveRecord::Base
	has_many :user_todo_items
	@todo_items = TodoItem.all
end
