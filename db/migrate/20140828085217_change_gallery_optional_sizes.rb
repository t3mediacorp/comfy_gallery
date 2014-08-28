class ChangeGalleryOptionalSizes < ActiveRecord::Migration
  def change
  	change_column :gallery_galleries, :full_width, :integer, :default => 640, :null => true
  	change_column :gallery_galleries, :full_height, :integer, :default => 480, :null => true
  	change_column :gallery_galleries, :thumb_width, :integer, :default => 150, :null => true
  	change_column :gallery_galleries, :thumb_height, :integer, :default => 150, :null => true
  end

end
