class AppDataController < ApplicationController

  protect_from_forgery :except => [:create]

  def index
    render json: App.order(:id).all
  end

  def create
    a = App.create(json_data: strong_param)
    render json: a
  end

  def update
    a = App.find(params[:id])
    a.update(json_data: strong_param)
  end

  def destroy
    a = App.find(params[:id])
    a.destroy
  end


  private

  def strong_param
    params.require(:app_datum).permit!
  end

end
