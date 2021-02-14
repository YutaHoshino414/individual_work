class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_parents

  def after_sign_in_path_for(resource)
    user_path(resource)
  end
  
  def after_sign_up_path_for(resource)
    user_path(resource)
  end

  def after_update_path_for(resource)
    user_path(resource)
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end
end
