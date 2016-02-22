class CreateUserChecklists < ActiveRecord::Migration
  def change
    change_table :user_checklists do |t|
      t.references :checklist, index: true, foreign_key: true
    end
  end
end
