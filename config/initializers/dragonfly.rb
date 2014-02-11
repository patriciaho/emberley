require 'dragonfly'
# require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  protect_from_dos_attacks true
  secret "8c8658cc4d9b791d931c4ffbf7f198d8824462cabdd839c0ed18410786d598bb"

  url_format "/media/:job/:name"

# Local storage
  # datastore :file,
  #   root_path: Rails.root.join('public/system/dragonfly', Rails.env),
  #   server_root: Rails.root.join('public')

  datastore :s3,
    bucket_name: 'emberley',
    access_key_id: 'AKIAJI2GHN4ZVRB7ZGNA',
    secret_access_key: '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'
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
