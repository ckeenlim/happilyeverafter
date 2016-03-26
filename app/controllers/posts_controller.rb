class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index]
	
	def index
		@posts = Post.all

	end

	def show
		@post
		@comments = @post.comments.paginate(page: params[:page], :per_page => 10)
	end


	def new
		@post = Post.new

	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id

		if @post.save
			redirect_to @post
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


	private

	def post_params
		params.require(:post).permit!
	end

	def find_post
		@post = Post.find(params[:id])
	end
end
