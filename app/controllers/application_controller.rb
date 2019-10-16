class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  

  protected
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:email, :password,:password_confirmation, :last_name, :first_name, :last_name_ruby, :first_name_ruby, :gender, deliveries_attributes: [:delivery_postal_code, :delivery_address, :delivery_phone_number, :_destroy])
  end
  end
end
