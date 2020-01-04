class SignupController < ApplicationController
  before_action :save_user_info_to_session, only: :user_tel
  before_action :save_user_tel_to_session, only: :user_address
  before_action :save_user_address_to_session, only: :create

  def user_info
    @user = User.new
    @user.build_user_address
  end

  def save_user_info_to_session
    session[:user_params] = user_params
    session[:user_attributes_after_user_info] = user_params[:user_attributes]
    @user = User.new(session[:user_params])
    render '/signup/user_info' unless @user.valid?
  end 

  def user_tel
    @user = User.new(session[:user_params])
    @user.build_user_address
    session[:nickname] = params[:user][:nickname]
    session[:email] = params[:user][:email]
    session[:password] = params[:user][:password]
    session[:password_confirmation] = params[:user][:password_confirmation]
    session[:last_name] = params[:user][:last_name]
    session[:first_name] = params[:user][:first_name]
    session[:last_name_kana] = params[:user][:last_name_kana]
    session[:first_name_kana] = params[:user][:first_name_kana]
    session[:birthday] = params[:user][:birthday]
  end

  def save_user_tel_to_session
    session[:user_address_attributes_after_user_tel] = user_params[:user_address_attributes]
    @user = User.new(session[:user_params])
    @user.build_user_address(session[:user_address_attributes_after_user_tel])
    render '/signup/user_tel' unless session[:user_address_attributes_after_user_tel][:telephone].present?
  end

  def user_address
    @user = User.new(session[:user_params])
    @user.build_user_address(session[:user_address])
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
    if @user.save
      sign_in User.find(@user.id)
      redirect_to user_card_signup_index_path
    else
      redirect_to user_info_signup_index_path
    end
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
