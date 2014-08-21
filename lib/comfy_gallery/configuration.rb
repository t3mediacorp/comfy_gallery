module ComfyGallery
  class Configuration
    
    # Paperclip upload settings for photos
    attr_accessor :upload_options
  
    # Default url to access admin area is http://yourhost/cms-admin/ 
    # You can change 'cms-admin' to 'admin', for example.
    attr_accessor :admin_route_prefix
    
    # Controller that should be used for admin area
    attr_accessor :admin_controller
    
    # Form builder
    attr_accessor :form_builder
    
    # Array of available gallery layout partials. Each entry must be a hash with a display_name, and file_name.
    attr_accessor :layouts
    # Name of layout to use by default
    attr_accessor :default_layout

    # Configuration defaults
    def initialize
      @upload_options     = { }
      @admin_route_prefix = 'admin'
      @admin_controller   = 'ApplicationController'
      @form_builder       = 'ComfyGallery::FormBuilder'
      @layouts            = [ {
        display_name: "3 across",
        file_name: "3_in_a_row"
        }]
      @default_layout     = @layouts.first
    end
    
  end
end