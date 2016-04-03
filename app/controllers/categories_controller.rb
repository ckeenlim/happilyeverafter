class CategoriesController < ApplicationController

	before_action :find_categories, :find_locations
	def index

	end


	def show 
		@category = Category.find(params[:id])
		@vendors = @category.vendors.paginate(:page => params[:page], :per_page=> 12)
		
	end


	private
	def find_categories
		@categories = Category.all

	end

	def find_locations
		@locations = Location.all

	end
end
