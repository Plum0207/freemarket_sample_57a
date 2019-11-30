class ItemsController < ApplicationController
  def index
    # @ladycategory =  Category.find_by(name: 'レディース')
    # @mancategory =  Category.find_by(name: 'メンズ')
    # @appliancecategory =  Category.find_by(name: '家電・スマホ・カメラ')
    # @hobbycategory =  Category.find_by(name: 'おもちゃ・ホビー・グッズ')
    # @lady = Item.active(@ladycategory.subtree).sorted
    # @man = Item.active(@mancategory.subtree).sorted
    # @appliance = Item.active(@appliancecategory.subtree).sorted
    # @hobby = Item.active(@hobbycategory.subtree).sorted
    # @category_parent =  Category.where(ancestry: nil)

    # @chanelbrand =  Brand.find_by(name: 'シャネル')
    # @vittonbrand =  Brand.find_by(name: 'ルイヴィトン')
    # @supremebrand =  Brand.find_by(name: 'シュプリーム')
    # @nikebrand =  Brand.find_by(name: 'ナイキ')
    # @chanel = Item.active(@chanelbrand.subtree).sorted
    # @vuitton = Item.active(@vuittonbrand.subtree).sorted
    # @supreme = Item.active(@supremebrand.subtree).sorted
    # @nike = Item.active(@nikebrand.subtree).sorted
    # @brand_parent =  Brand.where(ancestry: nil)
  end

  def new
    @item = Item.new
    @image = Image.new
    @categories = Category.all.roots
  end
end
