class PageController < ApplicationController
  def home
  end

  def vendors
    @vendors = Vendor.all
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
end
