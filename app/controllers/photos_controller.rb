class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_id = params[:id].to_i
    @photo_url = Photo.find(@photo_id).source
    @photo_caption = Photo.find(@photo_id).caption
  end


end
