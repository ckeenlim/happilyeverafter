class CreateVendorParentCategories < ActiveRecord::Migration
  def change
    create_table :vendor_parent_categories do |t|
    	t.string :name
      t.timestamps null: false
    end
  end
end
