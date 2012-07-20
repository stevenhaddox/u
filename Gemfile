# u/Gemfile
source 'http://rubygems.org'

gem 'rails', '~> 3.2.6'
gem 'mysql2'
gem 'high_voltage'
gem 'configatron'
gem 'flash-message-conductor'
gem 'jquery-rails', '2.0.0'

group :assets do
  gem 'sass-rails', '~> 3.2.4'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier', '>= 1.2.3', :require => 'uglifier'
end

# Bundle gems for the local environment
group :development, :test do
  gem 'capybara'                                        # Ruby web browser / parser
  gem 'database_cleaner'                                # Cleans your DB between tests
  gem 'factory_girl_rails', '3.1.0', :require => false # Factories > Fixtures (opinion)
  gem 'foreman'
  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.4'                           # RSpec for unit tests
  gem 'simplecov', '>= 0.4.0', :require => false        # Quick & dirty coverage output
  gem 'spork', '>=0.9.0.rc9'
end

group :test do
  gem "capybara-webkit"
  gem 'cucumber-rails'                                  # Cucumber for BDD testing
end
