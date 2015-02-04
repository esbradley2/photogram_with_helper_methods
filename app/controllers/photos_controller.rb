class PhotosController < ApplicationController
  def destroy
    photo = Photo.find(params[:id])

    photo.destroy

    redirect_to('http://localhost:3000/photos', :notice => "Photo deleted successfully")
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    photo = Photo.find(params[:id])

    photo.source = params[:source]
    photo.caption = params[:caption]

    photo.save

    redirect_to("http://localhost:3000/photos/#{photo.id}", :notice => "Photo updated successfully")
  end

  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new_form
  end

  def create_row
    @photo = Photo.new

    @photo.source = params[:source]
    @photo.caption = params[:caption]

    @photo.save

    redirect_to("http://localhost:3000/photos", :notice => "Photo created successfully.")
  end

end
