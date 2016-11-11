OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1800845180134677', 'd2693e09df1ae3cfacd3025c34f678a5',
    scope: 'publish_actions,email', :provider_ignores_state => true
end