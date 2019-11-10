class UsersController < ApplicationController
  layout "second_application"
  before_action :set_user, only: [ :update, :show_profile]
  before_action :authenticate_user! , except: [:show]

  def index
    @number = Product.where(seller_id: current_user.id, status: 0).length
    @products = Product.where(buyer_id: current_user.id, status: 1).order("id DESC").limit(5)
  end

  def new
    @user = User.new
    @user.build_user_address
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to done_signup_index_path
    else
      render '/signup/registration'
    end
  end

#   def done
#     # TODO view遷移を限定すること
#     render layout: 'application'
#   end

#   def update
#     if current_user.update(user_params)
#       flash[:notice] = "更新が完了しました"
#       redirect_to profile_users_path
#     else
#       flash[:alert] = "更新に失敗しました 必須項目を確認してください"
#       redirect_to profile_users_path
#     end
#   end
  
  def show
    render layout: 'application'
  end

#   def listing
#     @products = Product.where(seller_id: current_user.id, status: 0).order("id DESC").limit(5)
#   end

#   def completed
#     @products = Product.where(seller_id: current_user.id , status: 1).order("id DESC").limit(5)
#   end

#   def show_profile
#     @number = Product.where(seller_id: @user.id, status: 0).length
#   end

#   def purchased
#     @products = Product.where(buyer_id: current_user.id, status: 1).order("id DESC").limit(5)
#   end

#   def identification
#     @identity_information = IdentityInformation.new
#   end

#   def create_identification
#     @identity_information = IdentityInformation.create(params[:area_id])
#   end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, user_address_attributes:[:id, :postal_code, :prefecture, :city, :address, :building])
  end

#   def image_params
#     params.permit(:image)
#   end

#   def set_user
#     @user = User.find(params[:id])
#   end
end