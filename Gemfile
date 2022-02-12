source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'bcrypt', '~> 3.1.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.4', require: false

gem 'interactor'
gem 'rubocop'
gem 'sidekiq'
gem 'simple_form'
gem 'slim'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
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

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'pundit', '~> 2.1'
