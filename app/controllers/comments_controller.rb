class CommentsController < ApplicationController
	before_filter :authenticate_user!, except: [:index]
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params["comment"].permit(:comment))
		@comment.user_id = current_user.id
		@comments = @post.comments.paginate(page: params[:page], :per_page => 10)
		if @comment.save

			respond_to do |format|
				format.html  {redirect_to @post}#{redirect_to post_path(@post) }
				format.js 
			end
			

		else
			render 'new'

		end

		
	end


	def index
		@comments = @post.comments.paginate(page: params[:page], :per_page => 10)
	end
end
