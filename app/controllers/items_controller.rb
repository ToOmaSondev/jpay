class ItemsController < ApplicationController
  def index
    if params[:search]
      @items = Item.all.where("name ILIKE ?", "%#{params[:search][:query]}%")
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      flash[:success] = 'Item was Uploaded'
      redirect_to dashboard_path(@dashboard)
    else
      render :new
    end
  end

  def item_params
    params.require(:item).permit(:name, :price, :photo)
  end
end
