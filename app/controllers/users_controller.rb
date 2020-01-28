class UsersController < ApplicationController
  def index
    @item = Item.where(buyer_id: current_user.id)
  end
end