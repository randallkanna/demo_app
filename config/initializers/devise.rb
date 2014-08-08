# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|


config.secret_key = 'afd0adcb77fa8b2f5e6df84e233b1a5a50c5acb9aef63cdf9eafa63d7da9bab39df1c288ef48aaf3f7135ac88718501e568ff5c01e6254c1fe4e39634ea34160'
  config.mailer_sender = "please-change-me-at-config-initializers-devise@example.com"

  # Configure the class responsible to send e-mails.
  # config.mailer = "Devise::Mailer"


  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]

  config.strip_whitespace_keys = [ :email ]

 
  config.skip_session_storage = [:http_auth]

 
  config.stretches = Rails.env.test? ? 1 : 10


  config.reconfirmable = true

  config.reset_password_within = 6.hours



  config.sign_out_via = :delete

  
end