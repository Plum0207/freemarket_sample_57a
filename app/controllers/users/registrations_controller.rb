# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # prepend_before_action :check_captcha, only: [:create]

  # def new
  #   # @area = Area.where(params[:id])
  #   super
  #   @user = User.new
  #   # @user.build_user_address
  # end

  # def create
  #   super()
  #   # reCAPTCHA認証による分岐
  #   if verify_recaptcha(model: @user) && @user.save
  #     @user.save
  #   end
  # end

  # private

  # def check_captcha
  #   self.resource = resource_class.new sign_up_params
  #   resource.validate
  #   unless verify_recaptcha(model: resource)
  #     respond_with_navigational(resource) { render :new }
  #   end
  # end
end