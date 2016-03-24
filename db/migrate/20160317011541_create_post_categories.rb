class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
    	t.integer :category
    	t.integer :type
    	t.string :name
    	t.string :description
      t.timestamps null: false
    end
  end
end
