class Api::V1::ItemsController < ApplicationController
  respond_to :json

  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find(params[:id])
  end

  def destroy
    Item.find(params[:id]).destroy
    respond_with status: 204
  end

  def create
    @item = Item.create(name: params[:name], description: params[:description])
    respond_with @item, status: 201
  end
end
