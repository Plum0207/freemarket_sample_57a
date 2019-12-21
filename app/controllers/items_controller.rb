class ItemsController < ApplicationController
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
    @categories = Category.all.roots
  end
end
