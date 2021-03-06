class ItemsController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        @items = Item.all
        # binding.pry
        render json: @items, status: 201
    end
    
    def show
        @item = Item.find(params[:id])
        render json: @item, status: 201
    end
    
    def create
        @item = Item.create(item_params)
        render json: @item, status: 201
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        render json: @item, status: 201
    end

    def update
        # binding.pry
        @item = Item.find(params[:id])
        @item.update(item_likes)
        render json: @item, status: 201
    end

    private
    def item_params
        params.require(:item).permit(:name, :brand, :description, :likes)
      end

      def item_likes
        params.require(:item).permit(:likes)
      end
end
