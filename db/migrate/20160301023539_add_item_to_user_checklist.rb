class AddItemToUserChecklist < ActiveRecord::Migration
  def change
    add_column :user_checklists, :item, :string
  end
end
