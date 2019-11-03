class ApplicationController < ActionController::Base
  # basic認証
  before_action :basic_auth, if: :production?
  # params => devise_controller
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    added_attrs = [:nickname, :email, :password, :password_confirmation, :first_name, :last_name, :first_name_kana, :last_name_kana, :birthday, :phone_number, user_address_attributes: [:user_id, :first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :area_id, :city, :address, :building, :phone_number]]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  
  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end