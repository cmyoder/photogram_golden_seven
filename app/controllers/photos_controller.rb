class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_id = params[:id].to_i
    @photo_url = Photo.find(@photo_id).source
    @photo_caption = Photo.find(@photo_id).caption
  end

  def new_form

  end

  def create_row
    n = Photo.new
    n.source = params[:the_source]
    n.caption = params[:the_caption]
    n.save

    redirect_to("/photos")
  end

  def destroy
    @id_to_delete = params[:id]
    n = Photo.find(@id_to_delete)
    n.destroy

    redirect_to("/photos")
  end
end
