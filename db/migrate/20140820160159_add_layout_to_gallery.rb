class AddLayoutToGallery < ActiveRecord::Migration
  def change
  	add_column :gallery_galleries, :layout, :string
  end

end
