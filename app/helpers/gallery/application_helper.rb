module Gallery::ApplicationHelper
  
  def comfy_gallery_form_for(record_or_name_or_array, *args, &proc)
    options = args.extract_options!
    form_for(
      record_or_name_or_array,
      *(args << options.merge(:builder => ComfyGallery.config.form_builder.to_s.constantize)),
      &proc
    )
  end
  
  def render_gallery(slug, type = 'thumbnails')
    @gallery = Gallery::Gallery.find_by_slug(slug)
    if (@gallery)
      render :partial => "gallery/#{type}"
    else
      render :text => 'Gallery not found', :status => 404
    end
  end
  
  def render_galleries(type = 'list_galleries')
    @galleries = Gallery::Gallery.all
    if (@galleries)
      render :partial => "gallery/#{type}"
    else
      render :text => 'Gallery not found', :status => 404
    end
  end
  
end