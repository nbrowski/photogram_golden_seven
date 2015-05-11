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

  def create_photo
    p=Photo.new
    p.source=params[:the_source]
    p.caption=params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    p_to_destroy=Photo.find_by(:id => params[:id])
    p_to_destroy.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo_to_edit=Photo.find_by(:id => params[:id])
  end

  def update_row
    p_to_update=Photo.find_by(:id => params[:id])
    p_to_update.caption=params[:the_caption]
    p_to_update.source=params[:the_source]
    p_to_update.save

    redirect_to("http://localhost:3000/photos")

  end
end
