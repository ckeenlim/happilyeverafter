class PageController < ApplicationController
  
  def home

  end

  def vendors
    @vendors = search.paginate(:page => params[:page])
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
    
    @locations = Location.all
    
    if (params[:categoryid] != nil)
      @vendors = Vendor.where(categoryId: params[:categoryid]).paginate(:page => params[:page])
    else
      @vendors = vendors
    end
    
  end

  def search
    if (params[:commit])
      
      @search = Vendor
      # For Details Textfield #
      detailsQuery = ""
      if (params[:vendor][:details].present?)
        detailsQuery = "name ilike '%" + params[:vendor][:details] + "%'"  
      end
      # End of Details Textfield
       
      # For Category CheckBoxes #
      categoryQuery = ""
      if (params.has_key?'categoryCheckbox')
        categoryQuery = "";
        params[:categoryCheckbox].each do |c|
          
          if (categoryQuery != "")
            categoryQuery += "OR"
          end
          
          categoryQuery += ' "categoryId" = ' + c + ' '
        end  
      end
      # End of Category CheckBoxes
      
      # For Location CheckBoxes #
      locationQuery = "";
      if (params.has_key?'locationCheckbox')
        locationQuery = "";
        params[:locationCheckbox].each do |l|
          
          if (locationQuery != "")
            locationQuery += "OR"
          end
          
          locationQuery += " address ilike '%" + l + "%' "
        end  
      end
      # End of Location CheckBoxes
      
      @search = Vendor.where(detailsQuery).where(categoryQuery).where(locationQuery)
      
    else
      @search = Vendor.all
    end
  end

  def contact_vendor

  end

  private


end

