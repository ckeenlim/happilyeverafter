class Checklist < ActiveRecord::Base
		
		require 'csv'
		def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			checklist_hash = row.to_hash

			checklist = Checklist.where(id: checklist_hash["id"])

			if checklist.count < 1
				Checklist.create!(checklist_hash)
			end
		end
	end
end
