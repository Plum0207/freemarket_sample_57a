class SignupController < ApplicationController
  
  before_action :save_user_info_to_session, only: :user_tel
  before_action :save_user_address_to_session, only: :user_card
  
  def user_info
    @user = User.new
  end

  # 以下バリデーション
  def save_user_info_to_session
    session[:user_params] = user_params
    session[:user_attributes_after_user_info] = user_params[:user_attributes]
    @user = User.new(session[:user_params])
    render '/signup/user_info' unless @user.valid?
  end 

  def user_tel
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birthday] = user_params[:birthday]
    @user = User.new # 新規インスタンス作成
  end

  def user_address
    session[:telephone] = user_params[:telephone]
    @user = User.new # 新規インスタンス作成
  end

  # 以下バリデーション
  def save_user_address_to_session
    session[:user_address_attributes_after_user_tel] = user_params[:user_address_attributes]
    session[:user_address_attributes_after_user_tel].merge!(session[:user_attributes_after_user_tel])
    @user = User.new
    @user.build_user_address(session[:user_address_attributes_after_user_info])
    render '/signup/user_address' unless session[:user_address_attributes_after_user_tel][:telephone].present?
  end

  def user_card
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:postal_code] = user_params[:postal_code]
    session[:prefecture] = user_params[:prefecture]
    session[:city] = user_params[:city]
    session[:building] = user_params[:building]
    session[:telephone] = user_params[:telephone]
    @user = User.new # 新規インスタンス作成
  end

  def create
    @user = User.new(
      nickname: session[:nickname], # sessionに保存された値をインスタンスに渡す
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name], 
      first_name: session[:first_name], 
      last_name_kana: session[:last_name_kana], 
      first_name_kana: session[:first_name_kana], 
      birthday: session[:birthday], 
      telephone: session[:telephone], 
      postal_code: session[:postal_code]
    )
    if @user.save
　　　# ログインするための情報を保管
      session[:id] = @user.id
      redirect_to user_complete_signup_index_path
    else
      render '/signup/user_info'
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
      :telephone,
      :birthday, 
      user_address_attributes: [:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :prefecture, :city, :address, :building]
    )
  end
end