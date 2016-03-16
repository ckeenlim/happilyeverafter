class CreateUserChecklists < ActiveRecord::Migration
  def change
    create_table :user_checklists do |t|
      t.references :checklist, index: true, foreign_key: true
    end
  end
end
