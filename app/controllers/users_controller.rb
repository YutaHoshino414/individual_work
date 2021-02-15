class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
     #binding.pry
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice: "プロフィールを編集しました！"
    else
      render :edit
    end
  end

  def destroy 
  end
  
  def search
    @results = @q.result
  end
  

  private
  
  def set_q
    @q = User.ransack(params[:q])
  end
  
  def set_user
    @user = User.find(params[:id])
  #  binding.pry
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
