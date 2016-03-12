class UserTodoItemsController < ApplicationController
	before_action :set_user_todo_item , except: [:index, :create]

	def index
		@user_todo_items = UserTodoItem.where(:user_id => current_user.id, :completed_at => nil).order(:todo_item_id, :created_at)
		if !@user_todo_items.any?
			generate
		end
		@completed_user_todo_items = UserTodoItem.where(:user_id => current_user.id).where().not(completed_at: nil).order(:todo_item_id)
		#user_todo_items = TodoItem.includes(:user_todo_items => :users).where('user_id' => current_user.id)

		@user_todo_item = UserTodoItem.new
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
		
		respond_to do |format|
			format.html {redirect_to user_todo_items_path }
			format.js 
		end
	end

	def new
		 
	end

	def create
		@user_todo_item = UserTodoItem.new(item_params)
		@user_todo_item.user_id = current_user.id
		
		if @user_todo_item.save

			respond_to do |format|
				format.html  {redirect_to user_todo_items_path}#{redirect_to post_path(@post) }
				format.js 
			end
			

		else
			render 'new'

		end

	end

	private

	def set_user_todo_item
		@user_todo_item = UserTodoItem.find(params[:id])
	end

	def item_params
		params.require(:user_todo_item).permit!
	end
end
