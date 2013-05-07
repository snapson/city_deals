###
# Required Gems
###
require 'slim'

###
# Settings
###
set :site_title,        "Site name"
set :site_url,          "http://www.domain.com"
set :site_description,  "Meta description."
set :site_keywords,     "keyword-one, keyword-two"

Slim::Engine.disable_option_validator!
Slim::Engine.set_default_options :pretty => true, :disable_escape => true
set :slim, :layout_engine => :slim

###
# Assets
###
set :assets_load_paths, "assets"
set :fonts_dir,         "assets/fonts"
set :images_dir,        "assets/images"
set :css_dir,           "assets/stylesheets"
set :js_dir,            "assets/javascripts"


###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

helpers do
  # Override path to support fonts_dir
  def asset_path(kind, source)
    return source if source.to_s.include?('//')
    asset_folder  = case kind
      when :css    then css_dir
      when :js     then js_dir
      when :images then images_dir
      when :fonts  then fonts_dir
      else kind.to_s
    end
    source = source.to_s.tr(' ', '')
    ignore_extension = [:images, :fonts].include?(kind) # don't append extension
    source << ".#{kind}" unless ignore_extension || source.end_with?(".#{kind}")
    asset_folder = "" if source.start_with?('/') # absolute path

    asset_url(source, asset_folder)
  end
end


configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
