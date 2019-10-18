class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource) #ログイン時にadminじゃなければuser_items_pathへ。そうでなければadmin_items_pathへ。
    if params[:admin] == nil
       user_items_path
    else
       admin_items_path
    end
  end

  def after_sign_out_path_for(resource)
    user_items_path
  end

  protected
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:email, :password,:password_confirmation, :last_name, :first_name, :last_name_ruby, :first_name_ruby, :gender, deliveries_attributes: [:delivery_postal_code, :delivery_address, :delivery_phone_number, :_destroy])
  end
  end
end
