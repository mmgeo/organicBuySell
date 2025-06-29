class ItemsController < ApplicationController
  def index
    @items = Item.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: "Item listed successfully!"
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :item_type, :quantity, :quantity_unit, :price, :phone, :latitude, :longitude, :location)
  end
end