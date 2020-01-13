class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :buy]
  before_action :set_parents_categories, only: [:new, :create, :edit]
  before_action :set_item, only: [:buy, :pay, :done, :show, :destroy, :edit, :update]
  before_action :set_card, only: [:buy, :pay]
  before_action :set_new_item, :set_new_image, :set_new_brand, only: [:new, :create]
  require "payjp"


  def index
    #レディース
    @lady_items = Item.where(category: 33..215).recent(10)
    #メンズ
    @man_items = Item.where(category: 230..360).recent(10)
    #家電
    @appliance_items = Item.where(category: 916..989).recent(10)
    #おもちゃ・ホビー・グッズ
    @hobby_items = Item.where(category: 705..806).recent(10)
  
    #シャネル
    @channel_items = Item.where(brand: 1).recent(10)
    #ルイ・ヴィトン
    @vuitton_items = Item.where(brand: 3).recent(10)
    #シュプリーム
    @supreme_items = Item.where(brand: 4).recent(10)
    #ナイキ
    @nike_items = Item.where(brand: 6).recent(10)
  end

  def new
  end

  def create
    if params[:image] == nil
      flash.now[:alert] = "必須事項を入力してください"
      render new_item_path
    else
      @brand = Brand.where(name: brand_params[:name]).first_or_create
      @item = Item.new(items_params)
      images_params[:image].each do |img|
        @item.images.build(image: img)
      end
      if @item.save 
        redirect_to root_path
      else
        flash.now[:alert] = "必要事項を入力してください"
        render new_item_path
      end
    end
  end

  def buy
    @user = UserAddress.find_by(user_id: current_user.id)
    @pref = Pref.find(@user.prefecture)
    if @card.blank?
      redirect_to confirmation_cards_path
    else
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    Payjp::Charge.create(
      amount: @item.price,
      customer: @card.customer_id,
      currency: 'jpy',
    )
    if @item.present? && @item.update(status: 3, buyer_id: current_user.id)
      redirect_to done_item_path
    else
      redirect_to buy_item_path
    end
  end

  def done
  end

  def get_children_category
    @children_categories = Category.children_of(params[:parent_id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  def get_grandchildren_category
    @grandchildren_categories = Category.children_of(params[:children_id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @user = User.find(@item.seller_id)
    @pref = Pref.find(@item.prefecture_from)
    @user_items = Item.where(seller_id: @user.id).where.not(id: @item.id).recent(6)
    @brand_items = Item.where(brand_id: @item.brand_id, category_id: @item.category_id).where.not(id: @item.id).recent(6)
    @category_items = Item.where(category_id: @item.category_id).where.not(id: @item.id).recent(6)
  end

  def destroy
    if @item.destroy
      render action: :delete_confirmation
    else
      render item_path, alert: "削除が失敗しました"  
    end
  end

  def delete_confirmation  
  end

  def edit
    @brand = @item.brand
    @grandchildren_categories = @item.category.siblings
    @children_categories = @item.category.parent.siblings
    @fee = @item.price * 0.1
  end

  def update
    @brand = Brand.where(name: brand_params[:name]).first_or_create
    unless @item.update(update_params)
      redirect_to edit_item_path
    end
  end



  private

  def brand_params
    params.require(:brand).permit(:name)
  end

  def items_params 
    params.require(:item).permit(
      :name, 
      :description, 
      :category_id, 
      :size, 
      :condition, 
      :postage_burden, 
      :sending_method, 
      :prefecture_from, 
      :shipping_date, 
      :price,
    ).merge(brand_id: @brand.id, seller_id: current_user.id, status: 0)
  end

  def update_params
    params.require(:item).permit(
      :name, 
      :description, 
      :category_id, 
      :size, 
      :condition, 
      :postage_burden, 
      :sending_method, 
      :prefecture_from, 
      :shipping_date, 
      :price,
      images_attributes: [:image, :id, :_destroy]
      ).merge(brand_id: @brand.id)
  end

  def images_params
    params.require(:image).permit({image: []}, item_id: @item.id)
  end

  def set_parents_categories
    @parents_categories = Category.where(ancestry: nil)
  end

  def parent_id_params
    params.permit[:parent_id]
  end

  def children_id_params
    params.permit[:children_id]
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_new_item
    @item = Item.new
  end

  def set_new_image
    @image = Image.new
  end

  def set_new_brand
    @brand = Brand.new
  end

  def set_card
    @card = Card.find_by(user_id: current_user.id)
    if Rails.env.development? || Rails.env.test?
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    else
      Payjp.api_key = Rails.application.credentials.payjp[:payjp_private_key]
    end
  end

end
