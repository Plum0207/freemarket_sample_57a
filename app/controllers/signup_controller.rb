class SignupController < ApplicationController
  include RandomValue

  before_action :save_user_info_to_session, only: :user_tel
  before_action :save_user_tel_to_session, only: :user_tel_verification
  before_action :send_sms_code, only: :user_tel_verification
  before_action :check_sms_code, only: :user_address
  before_action :save_user_address_to_session, only: :create

  def user_info
    @user = User.new
    @user.build_user_address
  end

  def save_user_info_to_session
    session[:user_params] = user_params
    @user = User.new(session[:user_params])
    render '/signup/user_info' unless @user.valid?
  end 

  def user_tel
    @user = User.new(session[:user_params])
    @user.build_user_address
  end

  def save_user_tel_to_session
    session[:user_address_attributes_after_user_tel] = user_params[:user_address_attributes]
    @user = User.new(session[:user_params])
    @user.build_user_address(session[:user_address_attributes_after_user_tel])
  end

  def send_sms_code
    if session[:user_address_attributes_after_user_tel][:telephone].present?
      @user = User.new(session[:user_params])
      @user.build_user_address(session[:user_address_attributes_after_user_tel])
      send_phone_number      =   PhonyRails.normalize_number session[:user_address_attributes_after_user_tel][:telephone], country_code:'JP'
      session[:secure_code]  =   random_number_generator(4)
      begin
        client = Twilio::REST::Client.new
        if Rails.env.development? || Rails.env.test?
          twilio_phone_number = ENV["TWILIO_PHONE_NUMBER"]
        else
          twilio_phone_number = Rails.application.credentials.twilio[:TWILIO_PHONE_NUMBER]
        end
        result = client.messages.create(
          from: twilio_phone_number,
          to:   send_phone_number,
          body: "認証番号：#{session[:secure_code]}"
        )
      rescue Twilio::REST::RestError => e
        @messages = "エラーコード[#{e.code}] ：”#{e.message}”"
        render '/signup/user_tel'
      end
    end
  end

  def user_tel_verification
    @user = User.new(session[:user_params])
    @user.build_user_address
  end

  def check_sms_code
    if user_params[:user_address_attributes][:telephone].present?
      session[:input_code] = user_params[:user_address_attributes]
      @user = User.new(session[:user_params])
      @user.build_user_address(session[:user_address_attributes_after_user_tel])
      redirect_to action: :user_tel_verification unless session[:input_code].present?
      render '/signup/user_tel_verification' and return unless session[:secure_code] == session[:input_code][:telephone]
    end
  end

  def user_address
    @user = User.new(session[:user_params])
    @user.build_user_address
  end

  def save_user_address_to_session
    session[:user_address_attributes_after_user_address] = user_params[:user_address_attributes]
    session[:user_address_attributes_after_user_address].merge!(session[:user_address_attributes_after_user_tel])
    @user = User.new(session[:user_params])
    @user.build_user_address(session[:user_address_attributes_after_user_address])
    render '/signup/user_address' unless session[:user_address_attributes_after_user_address].present?
  end

  def create
    @user = User.new(session[:user_params])
    @user.build_user_address(session[:user_address_attributes_after_user_address])
    if @user.save(context: :user_signup)
      sign_in User.find(@user.id)
      redirect_to user_complete_signup_index_path
    else
      render user_address_signup_index_path
    end
  end

  def user_complete
    session[:user_params].clear
    session[:secure_code].clear if session[:secure_code].present?
    session[:input_code].clear if session[:input_code].present?
    session[:user_address_attributes_after_user_address].clear
  end

  private

  def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :password_confirmation, 
      :last_name, 
      :first_name, 
      :last_name_kana, 
      :first_name_kana, 
      :birthday, 
      user_address_attributes: [:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :prefecture, :city, :address, :building, :telephone]
    )
  end
end
