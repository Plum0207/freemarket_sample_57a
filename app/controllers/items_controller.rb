class ItemsController < ApplicationController
  def index
  end
end


# class ItemsController < ApplicationController
#   layout "second_application"
#   before_action :set_item, only: [:edit, :update, :show, :show_mine, :destroy]
#   before_action :authenticate_user!, only: [:new, :edit]
#   before_action :category_info_set, only: :index
#   before_action :brand_info_set, only: :index

#   include Search

#   def show
#     if user_signed_in?
#       if @item.seller_id == current_user.id
#         redirect_to show_mine_items_path
#       else
#         set_item_info
#       end
#     else
#       set_item_info
#     end
#   end

#   def show_mine
#     set_item_info
#     @category = @item.category
#   end

#   def new
#     @item = item.new
#     5.times { @item.images.build }
#     render layout: 'application'
#   end
  
#   def create
#     @item = item.new(item_params)
#     if @item.save && @img_attr.present?
#       flash[:notice] = "出品が完了しました"
#       redirect_to root_path
#     else
#       flash[:alert] = '出品に失敗しました。必須項目を確認してください。'
#       redirect_to new_items_path
#     end
#   end

#   def edit
#     @category = @item.category
#     @child_categories = Category.where('ancestry = ?', "#{@category.parent.ancestry}")
#     @grand_child = Category.where('ancestry = ?', "#{@category.ancestry}")

#     image_amount = 5
#     image_amount.freeze
#     num = image_amount - (@item.images.length)
#     num.times { @item.images.build }

#     render layout: 'application'
#   end

#   def update

#     if @item.update(update_params) && params.require(:item).keys[0] == "images_attributes"
#       redirect_to root_path ,notice: '商品を編集しました'
#     else
#       flash[:alert] = '編集に失敗しました。必須項目を確認してください。'
#       redirect_to edit_items_path
#     end

#   end
  
#   def destroy
#     if @item.seller_id == current_user.id
#       @item.destroy
#       redirect_to root_path
#       flash[:alert] = '商品を削除しました'
#     else
#       redirect_to show_items_path(item)
#       flash[:alert] = '商品削除に失敗しました'
#     end
#   end

#   private

#   def set_item
#     @item = item.find(params[:item_id])
#   end

#   def set_item_info
#     @seller = User.find(@item.seller_id)
#     @comment = Comment.new
#     @comments = Comment.where(item_id: @item.id)
#     @previous_item = @item.previous
#     @next_item = @item.next
#     @user_items = item.where(seller_id: @seller.id).where.not(id: @item.id).order("id DESC").limit(6)

#     category_check(@item.category)
#     @brand_items = item.where(brand_id: @item.brand_id).where.not(id: @item.id).order("id DESC").limit(6)
    
#     @postage_burden = postage_burden_check(params[:postage_burden])
#     @scheduled_sending_date = scheduled_check(params[:scheduled_sending_date])
#   end

#   def category_info_set
#     array = [1, 2, 3, 8]
#     for num in array do
#       search_anc = Category.where('ancestry LIKE(?)', "#{num}/%")
#       ids = []
#       search_anc.each do |i|
#         ids << i[:id]
#       end
#       items = item.where(category_id: ids).order("id DESC").limit(4)
#       instance_variable_set("@cat_no#{num}", items)
#     end
#   end

#   def brand_info_set
#     array = [1, 3, 4, 6]
#     for num in array do
#       items = item.where(brand_id: num).order("id DESC").limit(4)
#       instance_variable_set("@brand_no#{num}", items)
#     end
#   end

#   def postage_burden_check(num)
#     num == 0 ? "送料込み(出品者負担)" : "着払い(購入者負担)"
#   end

#   def scheduled_check(num)
#     num == 0 ? "1~2日で発送" : num == 1 ? "2~3日で発送" : "4~7日で発送"  
#   end

#   def category_check(cat)
#     anc = cat.ancestry
#     parent = anc.match(/^\d+/)[0].to_i
#     child = anc.match(/\d+$/)[0].to_i
#     @cat_parent = Category.find(parent)
#     @cat_child = Category.find(child)
#     @cat_grand_child = Category.find(cat.id)
#   end
  
#   def brand_check(brand_name)
#     brand_id = ""
#     if brand_name.present?
#       brand_reg = "^#{brand_name}$"
#       reg = Regexp.new(brand_reg)
#       Brand.all.each do |brand|
#         if brand[:name].match(reg)
#           brand_id = brand[:id]
#         end
#       end
#     end
#     return brand_id
#   end
  
#   def item_params
#     @img_attr = params[:item][:images_attributes]
#     params[:item][:brand_id] = brand_check(params[:item][:brand_id])
#     params.require(:item).permit(:name, :category_id, :brand_id, :price, :description, :condition_id, :postage_burden, :sending_method_id, :area_id, :scheduled_sending_date, :size_id, images_attributes: [:image_url]).merge(seller_id: current_user.id, status: 0, payment_method: 0, payment_status: 0, sending_status: 0, recieving_status: 0)
#   end

#   def update_params
#     params.require(:item).permit(:name, :category_id, :brand_id, :price, :description, :condition_id, :postage_burden, :sending_method_id, :area_id, :scheduled_sending_date, :size_id, images_attributes: [:image_url,:id]).merge(seller_id: current_user.id, status: 0, payment_method: 0, payment_status: 0, sending_status: 0, recieving_status: 0)
#   end
# end