class DropChecklists < ActiveRecord::Migration
	def change
  	drop_table :checklists
	end
end
