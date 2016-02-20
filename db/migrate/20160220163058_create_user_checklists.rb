class CreateUserChecklists < ActiveRecord::Migration
  def change
    create_table :user_checklists do |t|
    	t.integer :userId
    	t.integer :checklistId
    	t.string :statusCd
    	t.string :supplierId
    	t.decimal :totalCostAmt
    	t.decimal :paidAmt
      t.timestamps null: false
    end
  end
end
