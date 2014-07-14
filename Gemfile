# u/Gemfile
source 'http://rubygems.org'

gem 'rails', '~> 3.2.6'
gem 'mysql2'
gem 'high_voltage', '< 2.0'
gem 'configatron'
gem 'jquery-rails'

group :assets do
  gem 'sass-rails', '~> 3.2.4'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier', '>= 1.2.3', :require => 'uglifier'
end

# Bundle gems for the local environment
group :development, :test do
  gem 'awesome_print'
  gem 'factory_girl_rails', '3.1.0', :require => false # Factories > Fixtures (opinion)
  gem 'foreman'
  gem 'sqlite3'
  gem 'simplecov', '>= 0.4.0', :require => false        # Quick & dirty coverage output
  gem 'spork', '>=0.9.0.rc9'
end

group :test do
  gem "capybara", '< 2.4.0'
  gem "capybara-webkit"
  gem 'database_cleaner'                                # Cleans your DB between tests
  gem 'cucumber-rails', :require => false               # Cucumber for BDD testing
  gem 'rspec-rails', '~> 2.14.2'                           # RSpec for unit tests
end
