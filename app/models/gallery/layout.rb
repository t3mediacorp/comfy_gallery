#
# Defines a layout that can be used to display a gallery
#
class Gallery::Layout
	attr_accessor :id
	attr_accessor :partial

	#
	# Defines a Layout for a gallery of images.
	# id - is a unique identifier that's stored with the gallery
	# partial - Name of partial template to render gallery with. If null, then it's assumed that 
	#           you have extended Layout and implemented a :render method.
	#           Note that partials must be app/views/gallery_layouts
	#
	def initialize(id, partial = nil)
		self.id = id
		self.partial = partial
	end

	#
	# Human displayable name for this layout
	#
	def name
		@partial.humanize
	end

	#
	# Define render if you want to do custom rendering.
	# A Gallery object will be passed in. You need to return the content to display.
	#
	# def render(gallery)
	# end
end
