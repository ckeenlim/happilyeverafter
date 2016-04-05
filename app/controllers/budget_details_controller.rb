class BudgetDetailsController < ApplicationController
	before_action :set_budget_detail_entry , except: [:index, :create]
	before_action :authenticate_user!

	def index
		@budget_detail_entries = BudgetDetail.where(:user_id => current_user.id).order(:category_id, :id)
		if !@budget_detail_entries.any?
			generate
		end
		#@completed_user_todo_items = UserTodoItem.where(:user_id => current_user.id).where().not(completed_at: nil).order(:todo_item_id)
		#user_todo_items = TodoItem.includes(:user_todo_items => :users).where('user_id' => current_user.id)

		@budget_detail_entry = BudgetDetail.new
	end

	def show
		
	end

	def generate
		@generate = VendorParentCategory.all.order(:name)

		@generate.each do |i|
			@budget_detail_entry = BudgetDetail.new(:user_id => current_user.id, 
											:category_id => i.id,
											:entry_name => i.name, 
											:payee_name => "Main Category", 
											:cost_amt => 0,
											:paid_amt	=> 0,
											:balance_amt => 0
											)
			@budget_detail_entry.save!
		end

		redirect_to budget_details_path
	end


	def new
		 
	end

	def create
		@budget_detail_entry = BudgetDetail.new(entry_params)
		@budget_detail_entry.user_id = current_user.id
		
		if @budget_detail_entry.save

			respond_to do |format|
				format.html  {redirect_to user_todo_items_path}#{redirect_to post_path(@post) }
				format.js 
			end
			

		else
			render 'new'

		end

	end

	def destroy
		@budget_detail_entry.destroy

		respond_to do |format|
				format.html  {redirect_to budget_detail_path}#{redirect_to post_path(@post) }
				format.js 
		end
		
	end

	private

	def set_budget_detail_entry
		@budget_detail_entry= BudgetDetail.find(params[:id])
	end

	def entry_params
		params.require(:budget_detail).permit!
	end

end
