class ItemsController < ApplicationController
  before_action :set_parents_categories, only: [:new, :create]

  def index
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
end
