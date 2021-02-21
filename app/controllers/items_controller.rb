class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy, :purchase, :pay]
  before_action :authenticate_user!, only: [:new, :show, :edit, :update, :destroy, :purchase, :pay]
  before_action :set_q, only: [:index]

  def index
    #  @items = Item.all.order(created_at: :desc).page(params[:page]).per(10)
    @parents = Category.all.where(ancestry: nil)
    @item = Item.new
    @trend_categories_name = Item.joins(:category).group("categories.name").order('count_all DESC').limit(5).count.to_a
    @trend_categories_id = Item.group(:category_id).order('count_all DESC').limit(5).count.to_a
  # binding.pry
    @results = @q.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    respond_to do |format|
      if @item.save
        flash.now[:notice] = '投稿が作成されました'
        format.js { render :create }
        @results = Item.all.order(created_at: :desc).page(params[:page]).per(10)
        # @items = Item.all.order(created_at: :desc).page(params[:page]).per(10)
        format.html { redirect_to @item, notice: "投稿を作成しました！"}
      else
          format.html { render :new, notice: "投稿が失敗しました"}
      end
    end
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
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
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

  def set_q
    @q = Item.ransack(params[:q])
  end
end
