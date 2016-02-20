class ChecklistController < ApplicationController

	def index
  	@checklists = Checklist.all
  end

  def show
  end

  def change
  end

  def import
  	Checklist.import(params[:file])

  	redirect_to page_checklist_path,  notice: "Data imported. HEAP!"

  end
end
