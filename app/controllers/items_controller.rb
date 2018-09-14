class ItemsController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        @items = Item.all
        render json: @items, status: 201
    end
    
    def show
        @item = Item.find(params[:id])
        render json: @item, status: 201
    end
    
    def create
        @item = Item.create(user_params)
        render json: @item, status: 201
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        render json: @item, status: 201
    end

    private
    def user_params
        params.require(:item).permit(:name, :brand, :description)
      end

end
