class BlogsController < ApplicationController
	before_action :find_blog, only: [:show, :edit, :update, :destroy, :upvote]
	before_action :authenticate_user!, except: [:index, :show]
	
	def index
		@blogs =  Blog.where(post_type: 2)

	end

	def show
		@blog
		
	end


	def new
		@blog = Blog.new

	end

	def create
		@blog = Blog.new(blog_params)
		@blog.user_id = current_user.id
		@blog.post_type = 2

		if @blog.save
			redirect_to @blog
		else
			render 'new'
		end
	end

	def edit
	end
	def update
	end
	def destroy
	end

	def upvote
		@blog.upvote_by current_user
		respond_to do |format|
			format.html {redirect_to :back }
			format.js 
		end
		

	end


	private

	def blog_params
		params.require(:blog).permit!
	end

	def find_blog
		@blog = Blog.find(params[:id])
	end
end
