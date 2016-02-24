class AddAvatarsToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :avatars, :json
  end
end
