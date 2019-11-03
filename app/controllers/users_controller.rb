class UsersController < ApplicationController
  layout "second_application"
  before_action :set_user, only: [ :update, :show_profile]
  before_action :authenticate_user! , except: [:show]

  def index
    @number = Product.where(seller_id: current_user.id, status: 0).length
    @products = Product.where(buyer_id: current_user.id, status: 1).order("id DESC").limit(5)
  end

  def done
    # TODO view遷移を限定すること
    render layout: 'application'
  end

  def update
    if current_user.update(user_params)
      flash[:notice] = "更新が完了しました"
      redirect_to profile_users_path
    else
      flash[:alert] = "更新に失敗しました 必須項目を確認してください"
      redirect_to profile_users_path
    end
  end
  
  def show
    render layout: 'application'
  end

  def listing
    @products = Product.where(seller_id: current_user.id, status: 0).order("id DESC").limit(5)
  end

  def completed
    @products = Product.where(seller_id: current_user.id , status: 1).order("id DESC").limit(5)
  end

  def show_profile
    @number = Product.where(seller_id: @user.id, status: 0).length
  end

  def purchased
    @products = Product.where(buyer_id: current_user.id, status: 1).order("id DESC").limit(5)
  end

  def identification
    @identity_information = IdentityInformation.new
  end

  def create_identification
    @identity_information = IdentityInformation.create(params[:area_id])
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :introduction, :icon)
  end

  def image_params
    params.permit(:image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end