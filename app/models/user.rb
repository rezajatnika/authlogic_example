class User < ActiveRecord::Base
  # Authlogic
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::SCrypt
    c.validates_length_of_password_field_options = { minimum: 6 }
  end

  # Associations
  has_many :articles
end
