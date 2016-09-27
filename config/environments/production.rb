Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # Add `rack-cache` to your Gemfile before enabling this.
  # For large-scale production use, consider using a caching reverse proxy like
  # NGINX, varnish or squid.
  # config.action_dispatch.rack_cache = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug

  # Prepend all log lines with the following tags.
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  # config.action_controller.asset_host = 'http://assets.example.com'

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false


  #mailer
  # Rails.application.routes.default_url_options[:host] = 'https://mallonline.herokuapp.com'
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default :charset => "utf-8"

  # config.action_mailer.default_url_options = { :host => 'https://mallonline.herokuapp.com' }
  # Rails.application.routes.default_url_options[:host] = 'https://mallonline.herokuapp.com'
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default :charset => "utf-8"
  # #
  # config.action_mailer.smtp_settings = {
  #     address: 'smtp.gmail.com',
  #     port: 587,
  #     domain: 'gmail.com',
  #     authentication: "plain",
  #     enable_starttls_auto: true,
  #     user_name: ENV['GMAIL_SMTP_USER'],
  #     password: ENV['GMAIL_SMTP_PASSWORD'],
  #     openssl_verify_mode: 'none'
  # }

  # config.action_mailer.default_url_options = { :host => 'herokuapp.com' }
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default :charset => "utf-8"
  # config.action_mailer.smtp_settings = {
  #     address: "smtp.gmail.com",
  #     port: 587,
  #     domain: 'https://mallonline.herokuapp.com',
  #     authentication: "login",
  #     enable_starttls_auto: true,
  #     user_name: 'dinammorad1@gmail.com',
  #     password: '123456dodo',
  #     openssl_verify_mode: 'none'
  # }

  # config.action_mailer.default_url_options = {:host => 'herokuapp.com'}
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #     :address => "127.0.0.1",
  #     :port    => 25,
  #     :domain  => 'herokuapp.com'
  # }

  config.assets.compile = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { :host => "herokuapp.com" }
  config.action_mailer.smtp_settings = {
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => 'herokuapp.com',
      :user_name => "dinammorad1@gmail.com",
      :password => "123456dodo",
      :authentication => :plain,
      :enable_starttls_auto => true
  }

  # config.action_mailer.default_url_options = { :host => 'https://mallonline.herokuapp.com' }
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default :charset => "utf-8"
  # config.action_mailer.smtp_settings = {
  #     address: "smtp.gmail.com",
  #     port: 587,
  #     domain: 'https://mallonline.herokuapp.com',
  #     authentication: "login",
  #     enable_starttls_auto: true,
  #     user_name: 'dinammorad1@gmail.com',
  #     password: '123456dodo',
  #     openssl_verify_mode: 'none'
  # }
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.delivery_method = :smtp
  # host = 'https://mallonline.herokuapp.com'
  # config.action_mailer.default_url_options = { host: host }
  # ActionMailer::Base.smtp_settings = {
  #     :address        => 'smtp.sendgrid.net',
  #     :port           => '587',
  #     :authentication => "plain",
  #     :user_name => ENV['SENDGRID_SMTP_USER'],
  #     :password => ENV['SENDGRID_SMTP_PASSWORD'],
  #     :domain         => 'heroku.com',
  #     :enable_starttls_auto => true
  # }

  # config.action_mailer.smtp_settings = {
  #     :address   => "smtp.sendgrid.net",
  #     :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
  #     :enable_starttls_auto => true, # detects and uses STARTTLS
  #     :user_name => ENV["SENDGRID_SMTP_USER"],
  #     :password  => ENV["SENDGRID_SMTP_PASSWORD"], # SMTP password is any valid API key, when user_name is "apikey".
  #     :authentication => 'login',
  #     :domain => 'heroku.com', # your domain to identify your server when connecting
  # }

  # ActionMailer::Base.smtp_settings = {
  #     :user_name => 'eng_dinamorad@yahoo.com',
  #     :password => '123456dodo',
  #     :domain => 'https://mallonline.herokuapp.com',
  #     :address => 'smtp.sendgrid.net',
  #     :port => 587,
  #     :authentication => :plain,
  #     :enable_starttls_auto => true
  # }


  # config.action_controller.asset_host = "ttps://mallonline.herokuapp.com/"
  # config.action_mailer.default_url_options = { :host => "ttps://mallonline.herokuapp.com/" }
  # config.action_mailer.smtp_settings = {
  #     :address   => "smtp.gmail.com",
  #     :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
  #     :enable_starttls_auto => true, # detects and uses STARTTLS
  #     :user_name => "dinammorad1@gmail.com",
  #     :password  => "123456dodo", # SMTP password is any valid API key
  #     :authentication => 'login', # Mandrill supports 'plain' or 'login'
  #     :domain => "https://mallonline.herokuapp.com/", # your domain to identify your server when connecting
  # }




  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = false
  # config.action_mailer.default :charset => "utf-8"
  #
  # config.action_mailer.smtp_settings = {
  #     address: "smtp.gmail.com",
  #     port: 587,
  #     domain: 'gmail.com',
  #     authentication: "plain",
  #     enable_starttls_auto: true,
  #     user_name: 'dinammorad1@gmail.com',
  #     password: '123456dodo'
  # }

end
