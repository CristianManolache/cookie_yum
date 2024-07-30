require 'cookieyum_rails/version' # rubocop:disable Style/FrozenStringLiteralComment
require 'cookieyum_rails/engine'
require 'cookieyum_rails/ai_service'

module CookieyumRails # rubocop:disable Style/Documentation
  mattr_accessor :ai_api_key

  def self.configure
    yield self
  end
end
