class ImageController < ApplicationController

  protect_from_forgery :except => [:create]

  def create
    uploader = ImageUploader.new
    image = Image.new
    image.url = params[:file]
    render json: image
  end


end
