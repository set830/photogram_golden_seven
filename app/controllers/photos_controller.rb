class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
    render ("index.html.erb")
  end

  def show
    p = Photo.find_by({ :id => params[:id] })
    @photo_source = p.source
    @photo_caption = p.caption
    @photo_id = p.id
    render ("show.html.erb")
  end


end
