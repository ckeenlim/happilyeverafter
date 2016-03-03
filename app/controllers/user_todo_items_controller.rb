class UserTodoItemsController < ApplicationController


	def index
		@user_todo_items = UserTodoItem.where('user_id' => current_user.id)
		#user_todo_items = TodoItem.includes(:user_todo_items => :users).where('user_id' => current_user.id)
	end

	def show
		@user_todo_items = User_Todo_Items.find(:user_id)
	end

	def generate
		@generate = TodoItem.all

		@generate.each do |i|
			@User_Todo_Item = UserTodoItem.new(:user_id => current_user.id, :todo_item_id => i.id, :item => i.item, :description => i.description)
			@User_Todo_Item.save!
		end

		redirect_to user_todo_items_path


	end

	def create
		@generate = TodoItems.all
		@user_todo_items = TodoItems.all
	end
end
