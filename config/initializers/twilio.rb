require 'twilio-ruby'
Twilio.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.account_sid = ENV['TWILIO_ACCOUNT_SID']
    config.auth_token = ENV['TWILIO_AUTH_TOKEN']
  else
    config.account_sid = Rails.application.credentials.twilio[:TWILIO_ACCOUNT_SID]
    config.auth_token = Rails.application.credentials.twilio[:TWILIO_AUTH_TOKEN]
  end
end