class CreateBudgetDetails < ActiveRecord::Migration
  def change
    create_table :budget_details do |t|
    	t.references :user, index: true, foreign_key: true
    	t.references :category, foreign_key: true
    	t.string :entry_name
    	t.references :vendor
    	t.string :payee_name
    	t.decimal :cost_amt, precision: 10, scale: 2
    	t.decimal :paid_amt, precision: 10, scale: 2
    	t.decimal :balance_amt, precision: 10, scale: 2
    	
      t.timestamps null: false
    end
  end
end
