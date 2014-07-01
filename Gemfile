source 'https://rubygems.org'

gem 'rails', '4.1.1'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development

group :test do
  # a collection of special matchers
  gem 'shoulda-matchers'
  # when we run tests we use test db. this gem will clean out test db
  gem 'database_cleaner'
  # freezes the time
  gem 'timecop'
end

group :development, :test do
  gem 'spring-commands-rspec'
  # gem that generates fake data
  gem 'ffaker'
  # has handy rails stuff
  gem 'rspec-rails'
  gem 'pry-rails'
  # creates new instances from models and something something. look it up
  gem 'factory_girl_rails'
end
