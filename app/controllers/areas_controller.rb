class AreasController < ApplicationController
  layout "second_application"
  before_action :set_area

  def show
    @items = Item.where(area_id: params[:id]).order("id DESC")
  end

  private

  def set_area
    @area = Area.find(params[:id])
  end
end
