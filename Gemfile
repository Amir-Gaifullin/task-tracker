source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'aws-sdk-s3'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'draper'
gem 'image_processing'
gem 'interactor'
gem 'pagy', '~> 5.10'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.0'
gem 'sass-rails', '>= 6'
gem 'seedbank'
gem 'shrine'
gem 'sidekiq'
gem 'simple_form'
gem 'slim'
gem 'sprockets-rails'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'simplecov', require: false
end

group :development do
  gem 'letter_opener'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'rspec-rails', '~> 5.0.0'
end

gem 'pundit', '~> 2.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
