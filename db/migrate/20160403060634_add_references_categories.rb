class AddReferencesCategories < ActiveRecord::Migration
  def change
  	 add_column :categories, :parent_category_id, :integer, references: :parent_categories
  	 add_index :categories, :parent_category_id
  end
end
