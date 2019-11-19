class CardsController < ApplicationController
  layout "second_application"
  require "date"
  require "payjp"

  def index
    card = current_user.credit_card
    redirect_to action: "show" unless card.blank?
  end

  def new
    card = current_user.credit_card
    redirect_to action: "show" unless card.blank?

    now_day = Date.today
    now_year = now_day.year % 100
    @year_array = []
    11.times do
      @year_array << now_year
      now_year += 1
    end
  end

  def pay #クレジットカード登録
    Payjp.api_key = "sk_test_0e2eb234eabf724bfaa4e676"
    if params['payjpToken'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
      card: params['payjpToken'],
      metadata: {user_id: current_user.id}
      )
      @card = CreditCard.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "show"
        flash[:notice] = 'クレジットカードの登録が完了しました'
      else
        redirect_to action: "pay"
        flash[:alert] = 'クレジットカード登録に失敗しました'
      end
    end
  end

  def buy #クレジット購入
    unless user_signed_in?
      redirect_to registration_users_path
      flash[:alert] = '購入には新規登録が必要です'
    else
      card = current_user.credit_card
      if card.blank?
        redirect_to action: "new"
        flash[:alert] = '購入にはクレジットカード登録が必要です'
      else
        @item = Item.find(params[:item_id])
        card = current_user.credit_card
        Payjp.api_key = "sk_test_0e2eb234eabf724bfaa4e676"
        Payjp::Charge.create(
        amount: @item.price, #支払金額
        customer: card.customer_id, #顧客ID
        currency: 'jpy', #日本円
        )
        if @item.update(status: 1, buyer_id: current_user.id,buyed_time: DateTime.now)
          flash[:notice] = '購入しました。'
          redirect_to controller: "items", action: 'show'
        else
          flash[:alert] = '購入に失敗しました。'
          redirect_to controller: "items", action: 'show'
        end
      end
    end
  end

  def show
    card = current_user.credit_card
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = "sk_test_0e2eb234eabf724bfaa4e676"
      customer = Payjp::Customer.retrieve(card.customer_id)
      @customer_card = customer.cards.retrieve(card.card_id)
    end
  end

  def delete
    card = current_user.credit_card
    if card.blank?
      redirect_to action: "new"
    else
      Payjp.api_key = 'sk_test_0e2eb234eabf724bfaa4e676'
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
  end
end
