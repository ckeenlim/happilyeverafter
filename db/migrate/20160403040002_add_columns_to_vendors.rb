class AddColumnsToVendors < ActiveRecord::Migration
  def change
  	add_column :vendors, :facebookUrl, :string
  	add_column :vendors, :instagramUrl, :string
  	add_column :vendors, :twitterUrl, :string
  	add_column :vendors, :vimeoUrl, :string
  end
end
