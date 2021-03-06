class ListsController < ApplicationController

  protect_from_forgery :except => [:create]

  def index
    render json: List.order(:id).all
  end

  def show
    render json: List.find(:id)
  end

  def create
    a = List.create(json_data: strong_param)
    render json: a
  end

  def update
    a = List.find(params[:id])
    a.update(json_data: strong_param)
  end

  def destroy
    a = List.find(params[:id])
    a.destroy
  end


  private

  def strong_param
    params.permit!
  end

end
