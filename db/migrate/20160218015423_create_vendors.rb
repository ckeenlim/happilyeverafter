class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :officeNo
      t.string :homeNo
      t.string :cellNo
      t.string :cellNoAlt1
      t.string :cellNoAlt2
      t.string :cellNoAlt3
      t.string :cellNoAlt4
      t.string :emailAddress
      t.string :websiteUrl
      t.string :websiteUrl2
      t.string :featuredVendorInd
      t.string :imageUrl
      t.text :vendorDesc
      t.integer :categoryId

      t.timestamps null: false
    end
  end
end
