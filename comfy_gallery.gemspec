$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'comfy_gallery/version'

Gem::Specification.new do |s|
  s.name = "comfy_gallery"
  s.version = ComfyGallery::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Oleg Khabarov", "Stephen McLeod", "The Working Group Inc."]
  s.date = "2012-02-22"
  s.description = ""
  s.email = "oleg@twg.ca"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    ".travis.yml",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "{app,config,db,lib}/**/*",
    "sofa_gallery.gemspec",
    "test/fixtures/files/default.jpg",
    "test/fixtures/files/default.txt",
    "test/fixtures/files/default2.jpg",
    "test/fixtures/gallery/galleries.yml",
    "test/fixtures/gallery/photos.yml",
    "test/functional/admin/gallery/galleries_controller_test.rb",
    "test/functional/admin/gallery/photos_controller_test.rb",
    "test/test_helper.rb",
    "test/unit/configuration_test.rb",
    "test/unit/gallery_test.rb",
    "test/unit/photo_test.rb"
  ]
  s.homepage = "http://github.com/comfy/comfy-gallery"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "ComfyGallery is an image gallery engine for Rails 3.1 apps (and ComfortableMexicanSofa)"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.0"])
      s.add_runtime_dependency(%q<paperclip>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 1.0.14"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<paperclip>, [">= 2.3.0"])
      s.add_dependency(%q<jquery-rails>, [">= 1.0.14"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<paperclip>, [">= 2.3.0"])
    s.add_dependency(%q<jquery-rails>, [">= 1.0.14"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

