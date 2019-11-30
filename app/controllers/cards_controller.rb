class CardsController < ApplicationController
# MEMO(yokota): ユーザー登録関係のサーバーサイド実装後に使用
  # require "date"
  # require "payjp"

  def index
    # card = current_user.credit_card
    # redirect_to action: "show" unless card.blank?
  end
  def new
    # card = current_user.credit_card
    # redirect_to action: "show" unless card.blank?

    # now_day = Date.today
    # now_year = now_day.year % 100
    # @year_array = []
    # 11.times do
    #   @year_array << now_year
    #   now_year += 1
    # end
  end
  def pay
  end
end
