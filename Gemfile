source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "active_link_to"
gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "faker"
gem "pundit"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "solargraph"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "devise"

gem 'capistrano', '~> 3.11'
gem 'capistrano-rails', '~> 1.4'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'
gem 'net-ssh', '>= 6.0.2'
gem 'ed25519', '>= 1.2', '< 2.0'
gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'

group :development, :test do
  gem "bullet"
  gem "pry-rails"
  gem "awesome_print"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails"
  gem "rspec-rails", git: "http://github.com/rspec/rspec-rails", branch: "6-0-maintenance"
  gem "rubocop-faker"
  gem "rubocop", require: false
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem 'rubocop-rspec'
  gem 'rubocop-performance'
  gem "webmock"

end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "database_cleaner-active_record"
  gem "timecop", "~> 0.9.6"
  gem "simplecov", require: false
  gem "rspec_junit_formatter"
end

platform :mswin, :mingw, :x64_mingw do
  gem "win32_api"
end
