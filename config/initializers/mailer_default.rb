Rails.configuration.action_mailer.default_url_options = { host: Figaro.env.DEFAULT_HOST || 'localhost:3000' }

# For sendgrid mailer and other places we need to have a default host for generating URLs
Rails.application.routes.default_url_options[:host] = Figaro.env.DEFAULT_HOST || 'localhost:3000'

ActionMailer::Base.smtp_settings = {
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  domain: 'worldsymphony.com',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
