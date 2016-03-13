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
    @contact = Contact.new
  end

  def checklist
    @checklists = Checklist.all
  end

  def listings
    
    @categories = Category.all
    @locations = Location.all
    
    if params[:price]
      @search = Vendor.search(params[:details])
      @vendors = @search.result
    else
      @vendors = Vendor.all.paginate(:page => params[:page])
    end
  end


  def contact_vendor

  end

end

