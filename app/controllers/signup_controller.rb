class SignupController < ApplicationController
  def user_info
    @user = User.new
    @user.build_user_address
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
      redirect_to user_signup_done_signup_index_path
    else
      render '/signup/registration'
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
      :postal_code,
      :prefecture,
      :city,
      :address,
      :building
    )
  end
end