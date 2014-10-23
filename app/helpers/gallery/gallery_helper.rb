# require 'comfy_gallery/configuration'

module Gallery::GalleryHelper

	#
	# Renders a gallery of images using the gallery's layout or the default layout
	#
	def render_gallery (gallery_id_or_name)
		gallery = find_gallery gallery_id_or_name
		return if gallery.nil?

		id = gallery.layout || ComfyGallery.config.default_layout
		if id.present?

			# Find the layout for this id
			ComfyGallery.config.layouts.each do |layout|
				if layout.id == id
					# Allow layout to get fancy and do their own rendering
					if layout.respond_to? :render
						return layout.render gallery
					else
						# Just display a partial
						return render partial: "gallery_layouts/#{layout.partial}", locals: {gallery: gallery}
					end
				end
			end
		end
	end

	# Loads a gallery using its identifier or its full name
	def find_gallery(gallery_id_or_name)
		gallery_id_or_name.strip!
		return nil if gallery_id_or_name.nil? || gallery_id_or_name.empty?

		#Rails.logger.debug("Finding gallery '#{gallery_id_or_name}'")
		id = gallery_id_or_name.to_i

		if id != 0
			return Gallery::Gallery.find(id)
		else
			return Gallery::Gallery.where("identifier = '#{gallery_id_or_name}'").first
		end
	end

	#
	# Displays a gallery photo, ensuring we use an S3 expiring src link
	# style - :thumb, :full, :admin_thumb, :admin_full
	# options - See Rails image_tag for available options
	#
	def gallery_image_tag(photo, style, options={})
		image_tag(photo.image.expiring_url(ComfyGallery.config.s3_timeout,style), options)
	end

	#
	# Displays a photo with its corresponding link.
	# 
	# photo  - Gallery::Photo to display
	# style  - Which size of photo to display (full, thumb, admin_full, admin_thumb)
	# tags   - If not nil, this is an array of tags that determine which photos get their links
	#          displayed. If nil, the link is displayed. If the photo has no assigned tags
	#          the link will always be displayed.
	# options - HTML options for photo
	# 
	# A block can also be specified to display extra content within the link, or
	# below the photo if there is no link.
	#
	def gallery_image_with_link(photo, style, tags=nil, options={}, &block)
		if tags.nil? || photo.tags.nil? || photo.tags.empty? || !(photo.tags & tags).empty?
			link_to photo.url, title: photo.title, class: 'photo-link' do
				gallery_image_tag(photo, 'full', options) + capture(&block) if block_given?
			end
		else
			content_tag :div, class: 'photo-link' do
				gallery_image_tag(photo, 'full', options) + capture(&block) if block_given?
			end
		end
	end
end