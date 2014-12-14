class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :state, :city, :description, :email, :password, :password_confirmation, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:name, :state, :city, :description, :email, :password, :password_confirmation, :current_password, :avatar)
  end

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :state, :city, :description, :email, :password, :password_confirmation, :avatar)
    end
    devise_parameter_sanitizer.for(:edit) do |u|
      u.permit(:name, :state, :city, :description, :email, :password, :password_confirmation, :current_password, :avatar)
    end
  end
end
