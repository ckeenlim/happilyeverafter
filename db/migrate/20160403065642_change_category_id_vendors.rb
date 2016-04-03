class ChangeCategoryIdVendors < ActiveRecord::Migration
  def change
  	rename_column :vendors, :categoryId, :category_id
  	add_index :vendors, :category_id
  end
end
