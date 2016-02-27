class ReviewsController < ApplicationController
	before_action :find_vendor
	before_action :find_review, only: [:edit, :update, :destroy]
	def new
		@review 
	end

	def create
		@review = Review.new(review_params)
		@review.vendor_id = @vendor.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to vendor_path(@vendor)
		else
			render 'new'
		end

	end

	def edit
	
	end

	def destroy
		@review.destroy
		redirect_to vendor_path(@vendor)
	end

	def update
		if @review.update(review_params)
			redirect_to vendor_path(@vendor)
		else
			render 'edit'
		end
	end

	private
	def review_params
		params.require(:review).permit(:rating,:comment)
	end

	def find_vendor
		@vendor = Vendor.find(params[:vendor_id])
	end

	def find_review
		@review = Review.find(params[:id])
	end
end
