class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy, :purchase, :pay]

  def index
    @items = Item.all.order(created_at: :desc).page(params[:page]).per(10)
    @parents = Category.all.where(ancestry: nil)
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
      @comments = @item.comments
      @comment = @item.comments.build
      @favorite = current_user.favorites.find_by(item_id: @item.id)
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id), notice: "投稿を編集しました"
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: "投稿を削除しました"
  end

  def purchase
  end

  def pay
    Payjp.api_key = "sk_test_c50831c684c20a48dd29ef03"
    Payjp::Charge.create(
      :amount => @item.price,
      :card => params['payjp-token'],
      :currency => 'jpy'
    )
    @item.update(buyer_id: current_user.id)
    # binding.pry
  end

  private
  def item_params
    params.require(:item).permit(:name, :brand, :status, :delivery_from, :price, :content, :category_id)
  end
  def set_item
    @item = Item.find(params[:id])
  end
end
