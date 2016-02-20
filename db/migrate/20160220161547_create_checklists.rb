class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
    	t.string :name
    	t.string :description
    	t.integer :sortOrder
			t.integer :vendorCategory 
			t.integer :importance     
      t.timestamps null: false
    end
  end
end
