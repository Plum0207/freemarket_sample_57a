class ItemsController < ApplicationController
  before_action :set_parents_categories, only: [:new, :create]

  def index
    #レディース
    @lady_items = Item.where(category: 33..215).order('created_at DESC').limit(10)
    #メンズ
    @man_items = Item.where(category: 230..360).order('created_at DESC').limit(10)
    #家電
    @appliance_items = Item.where(category: 916..989).order('created_at DESC').limit(10)
    #おもちゃ・ホビー・グッズ
    @hobby_items = Item.where(category: 705..806).order('created_at DESC').limit(10)
  
    #シャネル
    @channel_items = Item.where(brand: 1).order('created_at DESC').limit(10)
    #ルイ・ヴィトン
    @vuitton_items = Item.where(brand: 3).order('created_at DESC').limit(10)
    #シュプリーム
    @supreme_items = Item.where(brand: 4).order('created_at DESC').limit(10)
    #ナイキ
    @nike_items = Item.where(brand: 6).order('created_at DESC').limit(10)
  end

  def new
    @item = Item.new
    @image = Image.new
    @brand = Brand.new
  end

  def create
    if params[:image] == nil
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
        render new_item_path
      end
    end
  end

  def buy
    @item = Item.find(params[:id])
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
    @item = Item.find(params[:id])
    @user = User.find(@item.seller_id)
    @pref = Pref.find(@item.prefecture_from)
    @user_items = Item.where(seller_id: @user.id).where.not(id: @item.id).order("id DESC").limit(6)
    @brand_items = Item.where(brand_id: @item.brand_id).where.not(id: @item.id).order("id DESC").limit(6)
    @category_items = Item.where(category_id: @categor_id).where.not(id: @item.id).order("id DESC").limit(6)
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
    ).merge(brand_id: @brand.id, seller_id: current_user.id)
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

end
