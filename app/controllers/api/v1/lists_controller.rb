class Api::V1::ListsController < ApplicationController

  before_action :find_list, only: [:show, :update, :destroy]

  def index
    @lists = List.all
    render json: @lists
  end

  def show
    @list = List.find(params[:id])
    render json: @list, status: :ok
  end


  # POST	/api/v1/users/:user_id/lists/:list_id/lists(.:format)
  def create
    @list = List.create(list_params)
    if @list.valid?
      render json: @list, status: :created
    else
      render json: @list.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @list.update(list_params)
    if @list.save
      render json: @list, status: :accepted
    else
      render json: { errors: @list.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @list.destroy
    render json: {message: "list deleted"}, status: :ok
  end

  def list_params
    params.permit(:name, :user_id)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
