# ComfyGallery [![Build Status](https://secure.travis-ci.org/comfy/comfy-gallery.png)](http://travis-ci.org/comfy/comfy-gallery) [![Dependency Status](https://gemnasium.com/comfy/comfy-gallery.png)](https://gemnasium.com/comfy/comfy-gallery)

ComfyGallery is an image gallery engine for Rails 3.1 apps. Also it integrates with ComfortableMexicanSofa CMS Engine

## Installation

Add gem definition to your Gemfile:
    
    gem 'comfy_gallery'
    
Then from the Rails project's root run:
    
    bundle install
    rails generate comfy_gallery
    rake db:migrate

## Usage

You can immediately access admin area by going to /admin/galleries.

If you are using ComfyGallery on it's own take a look in the initializer: [/config/initializers/comfy\_gallery.rb](https://github.com/comfy/comfy-gallery/blob/master/config/initializers/comfy_gallery.rb)
You probably want to set the admin controller to be something that handles user authentication within your app. Same goes for the admin\_route\_prefix.

If you are using ComfyGallery in conjunction with ComfortableMexicanSofa everything will be configured automatically.


CMS Gallery is released under the [MIT license](https://github.com/twg/sofa-gallery/raw/master/LICENSE) 

Copyright 2011 The Working Group