class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    # Overwriting the sign_out redirect path method
 	before_action :get_forum_categories
  before_action :set_search
  before_action :init_nav
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

def set_search
@q=Vendor.search(params[:q])
end
	def get_forum_categories
		var = 1
		@forum_categories = PostCategory.where(:category => 1)
	end

    def init_nav
    @subcategories = Subcategory.all  
  end
end

