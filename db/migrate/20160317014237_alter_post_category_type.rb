class AlterPostCategoryType < ActiveRecord::Migration
  def change
  	rename_column :post_categories, :type, :post_type
  	add_index :post_categories, [:category, :post_type]
  end
end
