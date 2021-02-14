class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.save
    redirect_to item_path(@item), notice: "投稿を作成しました！"
  end

  def show
    @item = Item.find(params[:id])
    
      @comments = @item.comments
      @comment = @item.comments.build
  end

  def edit
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
  end

  private
  def item_params
    params.require(:item).permit(:name, :brand, :status, :delivery_from, :price, :content)
  end
end
