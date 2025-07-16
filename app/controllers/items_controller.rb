class ItemsController < ApplicationController
  def index
    @items = Item.order(created_at: :desc)
    
    # Filter by item type if specified
    if params[:type].present?
      type = case params[:type].downcase
      when 'vegetable' then 'Vegetable'
      when 'fruit' then 'Fruit'
      when 'homemade', 'homemade product', 'homemade_products', 'homemadeproducts' then 'Homemade Product'
      else params[:type].capitalize
      end
      @items = @items.where(item_type: type)
    end
    
    # Filter by location if coordinates provided
    if params[:lat].present? && params[:lng].present?
      # For now, just show all items. In a real app, you'd implement distance calculation
      # @items = @items.near([params[:lat], params[:lng]], 50, units: :km)
    end
  end

  def new
    @item = Item.new
    @farmers = Farmer.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: "Item listed successfully!"
    else
      @farmers = Farmer.all
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :item_type, :quantity, :quantity_unit, :price, :phone, :latitude, :longitude, :location, :farmer_id)
  end
end