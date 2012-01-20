require File.expand_path('../config/application', __FILE__)
require 'rubygems'
require 'rake'

ComfyGallery::Application.load_tasks

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = 'comfy_gallery'
    gem.homepage    = 'http://github.com/comfy/comfy-gallery'
    gem.license     = 'MIT'
    gem.summary     = 'ComfyGallery is an image gallery engine for Rails 3.1 apps (and ComfortableMexicanSofa)'
    gem.description = ''
    gem.email       = 'oleg@twg.ca'
    gem.authors     = ['Oleg Khabarov', 'Stephen McLeod', 'The Working Group Inc.']
    gem.version     = File.read('VERSION').chomp
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end