class CommentsController < ApplicationController
  before_action :set_item
  before_action :authenticate_user!

  def create
    @comment = @item.comments.new(comment_params)
    @comment.save ? flash[:notice] = "コメントを投稿しました" : flash[:alert] = 'コメント投稿に失敗しました。入力内容を確認してください。'
    redirect_to show_items_path(@item)
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, item_id: @item.id)
  end
end
