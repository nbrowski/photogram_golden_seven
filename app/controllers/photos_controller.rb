class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  def show
    photo_id=params[:id]
    @photo_selected=Photo.find_by(:id => photo_id)
  end
  def new_form

  end

end
