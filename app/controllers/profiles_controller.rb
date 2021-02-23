class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save
    redirect_to users_path, notice: "プロフィールを作成しました！"
  end

  def edit
    @profile = Profile.find(params[:id])
     @user = current_user
    #  binding.pry
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to user_path(@profile.user_id), notice: "プロフィールを編集しました！"
     
    # binding.pry
    else
      render :edit
    end
  end

  def profile_params
    params.require(:profile).permit(:username, :first_name, :last_name, :birthday, :sex, :body_length, :introduction, :user_id)
  end


end
