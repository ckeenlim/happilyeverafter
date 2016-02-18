class RenameWebsiteUrl2 < ActiveRecord::Migration
  def change
  	rename_column :vendors, :websiteUrl2, :websiteUrlAlt1

  end

    

end
