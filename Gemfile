source 'https://rubygems.org'

gem 'rails', '3.2.21'
gem 'strong_parameters'

gem 'pry'
gem 'devise'
gem 'sqlite3'
gem 'jquery-rails'
gem 'test-unit' if RUBY_VERSION >= '2.2'

gem 'the_role_api',
  path: '../the_role_api'

gem 'the_role_management_panel',
  path: '../the_role_management_panel'

gem 'the_notification',
  path: '../the_notification'

gem 'ffaker'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'minitest'
  gem "minitest-rails"
  gem 'test-unit' if RUBY_VERSION >= '2.2'

  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'

  %w[
    rspec-core
    rspec-expectations
    rspec-mocks
    rspec-rails
    rspec-support
  ].each do |lib|
    gem lib, :git => "git://github.com/rspec/#{lib}.git", :branch => 'master'
  end
end
