class RenameVendorCategoryToSupplierCategory < ActiveRecord::Migration
  def change
  	rename_column :checklists, :vendorCategory, :supplierCategory

  end

end
