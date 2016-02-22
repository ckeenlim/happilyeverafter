class VendorsController < ApplicationController


  def index
  	@vendors = Vendor.all.paginate(:page => params[:page])
  end

  def show

  end

  def search
    @search = Vendor.search(params[:q])
    @vendors = @search.result
  end

  def change
  end

  def import
  	Vendor.import(params[:file])

  	redirect_to vendors_path,  notice: "Data imported. HEAP!"

  end


end
