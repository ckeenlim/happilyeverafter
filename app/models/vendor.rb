class Vendor < ActiveRecord::Base
	has_many :reviews
	mount_uploaders :avatars, AvatarUploader
	
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			vendor_hash = row.to_hash

			vendor = Vendor.where(id: vendor_hash["id"])

			if vendor.count < 1
				Vendor.create!(vendor_hash)
			end
		end
	end
end
