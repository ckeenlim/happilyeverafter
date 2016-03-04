class ChangePostsTypeToInt < ActiveRecord::Migration
  def change
  	change_column :posts, :type, 'integer USING CAST(type AS integer)'
  end
end
