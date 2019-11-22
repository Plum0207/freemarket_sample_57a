class SignupController < ApplicationController
  
  before_action :save_user_info_to_session, only: :user_tel
  # before_action :save_user_address_to_session, only: :user_card
  
  def user_info
    @user = User.new
    @user.build_user_address
  end

  # 以下バリデーション
  def save_user_info_to_session
    session[:user_params] = user_params
    session[:user_attributes_after_user_info] = user_params[:user_attributes]
    @user = User.new(session[:user_params])
    render '/signup/user_info' unless @user.valid?
  end 

  def user_tel
    session[:user_params] = user_params  #userモデルの値をぶっこむ。
    @user = User.new # 新規インスタンス作成
    @user.build_user_address
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
    session[:user_address_attributes_after_user_address] = user_params[:user_address_attributes]  # step2で入力された情報をsessionにぶっこむ。
    session[:user_address_attributes_after_user_address].merge!(session[:user_address_attributes_after_user_info])  # step2のsessionにstep1のsessionの中身を合わせる。
    @user = User.new
    @user.build_user_address
  end

  def create
    @user = User.new(session[:user_params])  # ここでuserモデルのsessionを引数で渡す。
    @user.build_user_address(session[:user_address_attributes_after_info])  # ここでprofileモデルのsessionを引数で渡す。
    @user.build_user_address(user_params[:user_address_attributes])  # 今回のビューで入力された情報を代入。
    if @user.save
      session[:id] = @user.id  #　ここでidをsessionに入れることでログイン状態に持っていける。
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