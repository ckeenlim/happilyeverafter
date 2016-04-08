class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :thumb_url, :string
  end
end
