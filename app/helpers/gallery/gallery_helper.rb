module Gallery::GalleryHelper
	#
	# Renders a gallery of images using the gallery's layout or the default layout
	#
	def render_gallery (gallery_id_or_name)
		id = gallery_id_or_name.to_i
		if id != 0
			gallery = Gallery.find(id)
		else
			gallery = Gallery.find_by_name(gallery_id_or_name)
		end
		
		return if gallery.nil?

		layout = gallery.layout || Gallery::Configuration.default_layout

		render partial: "gallery_layouts/#{layout.file_name}", locals: {gallery: gallery}
	end
end