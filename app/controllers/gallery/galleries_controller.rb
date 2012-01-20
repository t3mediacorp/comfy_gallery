class Gallery::GalleriesController < ApplicationController
  
  def index
    @galleries = Gallery::Gallery.all
  rescue ActiveRecord::RecordNotFound
    render :text => 'Gallery not found', :status => 404
  end
  
  def show
    @gallery = Gallery::Gallery.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render :text => 'Gallery not found', :status => 404
  end
  
end