class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @image = Image.new
    @categories = Category.where(ancestry: nil)
    @brand = Brand.new
  end

  def create
    @brand = Brand.where(name: brand_params[:name]).first_or_create
    @item = Item.new(items_params)
    @item.save
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
      :discription, 
      :category_id, 
      :size, 
      :condition, 
      :postage_burden, 
      :sending_method, 
      :prefecture_from, 
      :shipping_date, 
      :price
    )
    .merge(brand_id: @brand.id)
  end


  def parent_id_params
    params.permit[:parent_id]
  end

  def children_id_params
    params.permit[:children_id]
  end
end
