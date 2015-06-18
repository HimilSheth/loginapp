
ENV['FACEBOOK_APP_ID'] = "477382722424851";
ENV['FACEBOOK_SECRET'] = "23b6d90a8d92b4aad1348fbf9e213ea2";
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
end
