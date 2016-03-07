class UserTodoItemsController < ApplicationController
	before_action :set_user_todo_item , except: [:index]

	def index
		@user_todo_items = UserTodoItem.where('user_id' => current_user.id).order(:todo_item_id)
		if !@user_todo_items.any?
			generate
		end
		#user_todo_items = TodoItem.includes(:user_todo_items => :users).where('user_id' => current_user.id)
	end

	def show
		@user_todo_items = User_Todo_Items.find(:user_id)
	end

	def generate
		@generate = TodoItem.all

		@generate.each do |i|
			@User_Todo_Item = UserTodoItem.new(:user_id => current_user.id, 
											:todo_item_id => i.id, :item => i.item, :description => i.description
											)
			@User_Todo_Item.save!
		end

		#redirect_to user_todo_items_path
	end

	def complete
		@user_todo_item.update_attribute(:completed_at, Time.now)
		respond_to do |format|
			format.html {redirect_to user_todo_items_path }
			format.js 
		end
		
	end

	def reset
		@user_todo_item.update_attribute(:completed_at, nil)
		redirect_to user_todo_items_path
	end

	def create

	end

	private

	def set_user_todo_item
		@user_todo_item = UserTodoItem.find(params[:id])
	end
end
