source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data"
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"

group :development, :test do
  gem "awesome_print"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rubocop", require: false
  gem "rubocop-rails"
  gem 'rubocop-rspec'
  gem 'rubocop-performance'
end

group :development do
  gem "faker"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
