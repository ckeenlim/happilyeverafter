class PageController < ApplicationController
  before_filter :set_search
  def home

  end

  def vendors
    @vendors = Vendor.all.paginate(:page => params[:page])
  end

  def about
  end

  def faqs
  end

  def contact
  end

  def checklist
    @checklists = Checklist.all
  end


  def contact_vendor

  end


end
