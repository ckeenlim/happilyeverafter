class VendorsController < ApplicationController
  before_action :find_vendor
  before_filter :set_search
  
  def index
  	@vendors = Vendor.all.paginate(:page => params[:page])
  end

  def show
    @vendor = Vendor.find(params[:id]) 
  end

  def search
    @search = Vendor.search(params[:q])
    @vendors = @search.result
  end

  def change
  end

  def edit
    @vendor = Vendor.find(params[:id]) 
  end

  def new
  end

  def update
    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render "Edit"
    end

  end

  def create
      @vendor = Vendor.new(vendor_params)

      if @vendor.save
        redirect_to @vendor, notice: "Vendor Added"
      end

  end


  def import
  	Vendor.import(params[:file])

  	redirect_to vendors_path,  notice: "Data imported. HEAP!"

  end

  private
  def vendor_params
    params.require(:vendor).permit!
  end

  private 
  def find_vendor
    @vendor = Vendor.find(params[:id]) 
    
  end


end
