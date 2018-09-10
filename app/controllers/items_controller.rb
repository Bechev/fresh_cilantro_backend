class ItemsController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        @items = Item.all
        respond_to do |f|
            f.html
            f.json {render json: @items, status: 201}
        end
    end

    def create
        item = Item.new(user_params)
        item.save
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
    end

    private
    def user_params
        params.require(:item).permit(:name, :brand, :description)
      end

end
