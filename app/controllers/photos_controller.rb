class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
    render ("index.html.erb")
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
    render ("show.html.erb")
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to ("http://localhost:3000/photos")
  end

  def edit_form
    @photos = Photo.find(params[:id])

  end


  def update_row
    @photos = Photo.find(params[:id])
    @photos.caption = params[:the_caption]
    @photos.source = params[:the_source]
    @photos.save

    redirect_to ("http://localhost:3000/photos")

  end


  def destroy
    @photos = Photo.find(params[:id])
    @photos.destroy
    redirect_to ("http://localhost:3000/photos")

  end


end
