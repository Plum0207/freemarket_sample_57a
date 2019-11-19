class BrandController < ApplicationController
  layout "second_application"
  before_action :set_brand

  def show
    @items = Item.where(brand_id: params[:id]).order("id DESC")
  end

  private

  def set_brand
    @brand = Brand.find(params[:id])
  end
end
