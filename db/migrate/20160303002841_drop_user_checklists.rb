class DropUserChecklists < ActiveRecord::Migration
  def change
  	drop_table :user_checklists
  end
end
