class ItemsController < ApplicationController
    def index
        @items = Item.all
        respond_to do |f|
            f.html
            f.json {render json: @items, status: 201}
        end
    end
end
