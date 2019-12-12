class ItemsController < ApplicationController
  def index
    #condition等その他のオプションは後で追記出来ます（例）@lady_items = Item.where(category: 1.14..215).where(condition: 0).order('created_at DESC').limit(10).where.not(condition: 1)
    
    #レディース
    @lady_items = Item.where(category: 14..215).order('created_at DESC').limit(10)
    #メンズ
    @man_items = Item.where(category: 216..360).order('created_at DESC').limit(10)
    #家電
    @appliance_items = Item.where(category: 906..989).order('created_at DESC').limit(10)
    #おもちゃ・ホビー・グッズ
    @hobby_items = Item.where(category: 695..806).order('created_at DESC').limit(10)
  
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
