class Api::V1::ItemsController < ApplicationController

  before_action :find_item, only: [:show, :update, :destroy]

  def index
    @items = Item.all
    render json:@items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item, status: :ok
  end

  def create
    @item = Item.create(item_params)
    if @item.valid?
      render json: @item, status: :created
    else
      render json: @item.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @item.update(item_params)
    if @item.save
      render json: @item, status: :accepted
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @item.destroy
    render json: {message: "item deleted"}, status: :ok
  end

  private

  def item_params
    params.permit(:name, :list_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
