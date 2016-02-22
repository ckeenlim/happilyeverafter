class UserChecklistController < ApplicationController
	def index
  	@user_checklists = Checklist.all
  end
end
