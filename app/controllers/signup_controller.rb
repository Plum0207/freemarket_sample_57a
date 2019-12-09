class SignupController < ApplicationController

  def user_info
    @user = User.new
  end

  def user_tel
    @user = User.new(user_params)
    if @user.save
      render '/signup/user_tel'
    else
      render '/signup/user_info'
    end
  end

  def user_address
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
        :birthday)
    end

end

# MEMO：以下、余裕があればsessionで登録できるようにするため
  
#   # before_action :save_user_info_to_session, only: :user_tel
#   # before_action :save_user_address_to_session, only: :user_card

#   def user_info
#     @user = User.new
#     @user.build_user_address
#   end

#   # バリデーション
#   def save_user_info_to_session
#     session[:user_params] = user_params
#     session[:user_attributes_after_user_info] = user_params[:user_attributes]
#     @user = User.new(session[:user_params])
#     render '/signup/user_info' unless @user.valid?
#   end 

#   def user_tel
#     @user = User.new(session[:user_params])
#     @user.build_user_address
#     User.create(user_params)
#     # 以下勝山さんアドバイス
#     session[:nickname] = params[:user][:nickname]
#     session[:email] = params[:user][:email]
#     session[:password] = params[:user][:password]
#     session[:password_confirmation] = params[:user][:password_confirmation]
#     session[:last_name] = params[:user][:last_name]
#     session[:first_name] = params[:user][:first_name]
#     session[:last_name_kana] = params[:user][:last_name_kana]
#     session[:first_name_kana] = params[:user][:first_name_kana]
#     session[:birthday] = params[:user][:birthday]
#     # binding.pry
#     # MEMO：以下、これまでのコード//認証だけなので、現段階で記述不要かも。
#     # #userモデルの値を入れる。
#     # @user = User.new # 新規インスタンス作成
#     # @user.build_user_address
#   end

#   def user_address
#     @user = User.new
#     @user.build_user_address
#     user = User.find_by(email: session[:email]) # 大丸さんアドバイス
#     UserAddress.create(user_address_params)
#     # 以下勝山さんアドバイス
#     binding.pry
#     user.last_name
#     user.first_name
#     user.last_name_kana
#     user.first_name_kana
#     session[:postal_code] = params[:user_address][:postal_code]
#     session[:prefecture] = params[:user_address][:prefecture]
#     session[:city] = params[:user_address][:city]
#     session[:address] = params[:user_address][:address]
#     session[:building] = params[:user_address][:building]
#     user_id: user.id
#   end

#   # バリデーション
#   def save_user_address_to_session
#     session[:user_address_attributes_after_user_tel] = user_params[:user_address_attributes]
#     session[:user_address_attributes_after_user_tel].merge!(session[:user_attributes_after_user_tel])
#     @user = User.new
#     @user.build_user_address(session[:user_address_attributes_after_user_info])
#     render '/signup/user_address' unless session[:user_address_attributes_after_user_tel][:telephone].present?
#   end

#   def user_card
#     @user = User.new
#     @user.build_user_address
#     user = User.find_by(email: session[:email])
#     # binding.pry
#     UserAddress.create(
#       user.last_name,
#       user.first_name,
#       user.last_name_kana,
#       user.first_name_kana,
#       postal_code: session[:postal_code],
#       prefecture: session[:prefecture],
#       city: session[:city],
#       address: session[:address],
#       building: session[:building],
#       user_id: user.id
#     )
#     # MEMO：以下、これまでのコード//payjpに保存させる内容？現段階で記述不要かも。
#       # session[:user_address_attributes_after_user_address] = user_params[:user_address_attributes]  # user_addressで入力された情報をsessionに入れる。
#       # session[:user_address_attributes_after_user_address].merge!(session[:user_address_attributes_after_user_info])  # user_addressのsessionにuser_infoのsessionの中身を合わせる。
#       # @user = User.new
#       # @user.build_user_address
#   end

#   def create
#     @user = User.new(session[:user_params])  # ここでuserモデルのsessionを引数で渡す。
#     @user.build_user_address(session[:user_address_attributes_after_info])  # ここでuser_addressモデルのsessionを引数で渡す。
#     @user.build_user_address(user_params[:user_address_attributes])  # 今回のビューで入力された情報を代入。
#     if @user.save
#       session[:id] = @user.id  # ここでidをsessionに入れることでログイン状態に持っていく。
#       redirect_to user_complete_signup_index_path
#     else
#       render '/signup/user_info'
#     end
#   end

#   private
#   def user_params
#     params.require(:user).permit(
#       :nickname, 
#       :email, 
#       :password, 
#       :password_confirmation, 
#       :last_name, 
#       :first_name, 
#       :last_name_kana, 
#       :first_name_kana, 
#       :birthday
#     )
#   end
#   def user_address_params
#     params.require(:user_address).permit(
#       :last_name, 
#       :first_name, 
#       :last_name_kana, 
#       :first_name_kana, 
#       :postal_code,
#       :prefecture,
#       :city,
#       :address,
#       :building
#     )
#   end
# end


# MEMO：大丸さんのアドバイス_merge!メソッドでのデータの結合ではなく、ページごとに保存テーブルを分ける
#   User.create!(
#     nickname: session[:nickname],
#     email: session[:email],
#     password: session[:password],
#     password_confirmation: session[:password_confirmation], 
#     last_name: session[:last_name],
#     first_name: session[:first_name],
#     last_name_kana: session[:last_name_kana],
#     first_name_kana: session[:first_name_kana],
#     birthday: session[:birthday],
#     )
#   user = User.find_by(email: session[:email])
#   User_address.create(
#     first_name: session[:first_name],
#     last_name: session[:last_name],
#     last_name_kana: session[:last_name_kana],
#     first_name_kana: session[:first_name_kana],
#     postal_code: session[:postal_code],
#     prefecture: session[:prefecture],
#     city: session[:city],
#     address: session[:address],
#     building: session[:building],
#     user_id: user.id
#     )


# MEMO：大丸さんのアドバイスに基づく編集前のコード
#   class SignupController < ApplicationController

#     before_action :save_user_info_to_session, only: :user_tel
#     # before_action :save_user_address_to_session, only: :user_card
    
#     def user_info
#       @user = User.new
#       @user.build_user_address
#     end
  
#     # 以下バリデーション
#     def save_user_info_to_session
#       session[:user_params] = user_params
#       session[:user_attributes_after_user_info] = user_params[:user_attributes]
#       @user = User.new(session[:user_params])
#       render '/signup/user_info' unless @user.valid?
#     end 
  
#     def user_tel
#       session[:user_params] = user_params  #userモデルの値を入れる。
#       @user = User.new # 新規インスタンス作成
#       @user.build_user_address
#     end
  
#     def user_address
#       session[:telephone] = user_params[:telephone]
#       @user = User.new # 新規インスタンス作成
#     end
  
#     # 以下バリデーション
#     def save_user_address_to_session
#       session[:user_address_attributes_after_user_tel] = user_params[:user_address_attributes]
#       session[:user_address_attributes_after_user_tel].merge!(session[:user_attributes_after_user_tel])
#       @user = User.new
#       @user.build_user_address(session[:user_address_attributes_after_user_info])
#       render '/signup/user_address' unless session[:user_address_attributes_after_user_tel][:telephone].present?
#     end
  
#     def user_card
#       session[:user_address_attributes_after_user_address] = user_params[:user_address_attributes]  # user_addressで入力された情報をsessionに入れる。
#       session[:user_address_attributes_after_user_address].merge!(session[:user_address_attributes_after_user_info])  # user_addressのsessionにuser_infoのsessionの中身を合わせる。
#       @user = User.new
#       @user.build_user_address
#     end
  
#     def create
#       @user = User.new(session[:user_params])  # ここでuserモデルのsessionを引数で渡す。
#       @user.build_user_address(session[:user_address_attributes_after_info])  # ここでuser_addressモデルのsessionを引数で渡す。
#       @user.build_user_address(user_params[:user_address_attributes])  # 今回のビューで入力された情報を代入。
#       if @user.save
#         session[:id] = @user.id  # ここでidをsessionに入れることでログイン状態に持っていく。
#         redirect_to user_complete_signup_index_path
#       else
#         render '/signup/user_info'
#       end
#     end
  
#     private
#     def user_params
#       params.require(:user).permit(
#         :nickname, 
#         :email, 
#         :password, 
#         :password_confirmation, 
#         :last_name, 
#         :first_name, 
#         :last_name_kana, 
#         :first_name_kana, 
#         :telephone,
#         :birthday, 
#         user_address_attributes: [:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :prefecture, :city, :address, :building]
#       )
#     end
#   end
    