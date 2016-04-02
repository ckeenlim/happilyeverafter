class Subcategory < ActiveRecord::Base
  has_one :category
  belongs_to :vendor
end
