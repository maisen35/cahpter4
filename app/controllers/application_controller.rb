class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]
  before_action :configure_permited_parameters, if: :devise_controller?

  def after_sign_in_path_for(resouroe)
    @user = User.find(current_user.id)
    user_path(@user.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end



  private
  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
  end
end
