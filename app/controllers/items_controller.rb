class ItemsController < ApplicationController
  protect_from_forgery :except => [:create]

  def index
    render json: Item.order(:id).all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    a = Item.create(json_data: strong_param)
    render json: a
  end

  def update
    a = Item.find(params[:id])
    a.update(json_data: strong_param)
  end

  def destroy
    a = Item.find(params[:id])
    a.destroy
  end


  private

  def strong_param
    params.permit!
  end
end
