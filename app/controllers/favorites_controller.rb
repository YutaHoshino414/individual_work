class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(item_id: params[:item_id])
    redirect_to item_path(favorite.item_id), notice: "お気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    # binding.pry
    redirect_to item_path(favorite.item_id), notice: "お気に入り解除しました"
  end
end
