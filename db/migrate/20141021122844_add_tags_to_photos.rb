class AddTagsToPhotos < ActiveRecord::Migration
  def change
	  add_column :gallery_photos, :tags, :text, :null => true
  end

end
