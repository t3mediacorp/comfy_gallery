class AddUrlToPhotos < ActiveRecord::Migration
  def change
  	add_column :gallery_photos, :url, :text
  end

end
