# frozen_string_literal: true

require File.expand_path('lib/cookieyum_rails/version', __dir__)

Gem::Specification.new do |spec|
  spec.name = 'cookieyum_rails'
  spec.version = CookieyumRails::VERSION
  spec.authors = ['Manolache Laurentiu Cristian']
  spec.email = ['mlcristian@outlook.com']
  spec.summary = 'Cookie Yum Gem for Ruby on Rails'
  spec.description = 'This gem allows creating both the view and backend logic for cookie processing in Ruby on Rails applications.'
  spec.homepage = 'https://mlcristian.com'
  spec.license = 'MIT'
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5.0'

  spec.files = Dir['README.md', 'LICENSE', 'CHANGELOG.md', 'lib/**/*.rb',
                   'lib/**/*.rake', 'cookie_yum.gemspec', '.github/*.md', 'Gemfile', 'Rakefile']

  spec.extra_rdoc_files = ['README.md']

  spec.add_dependency 'rubyzip', '~> 2.3.2'
  spec.add_development_dependency 'rubocop', '~> 1.65'
  spec.add_development_dependency 'rubocop-performance', '~> 1.21.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.0.3'
end
