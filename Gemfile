# u/Gemfile
source 'http://rubygems.org'

gem 'rails', '3.1.6'
gem 'mysql2'
gem 'high_voltage'
gem 'configatron'
gem 'flash-message-conductor'

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
  gem 'cucumber-rails'                                  # Cucumber for BDD testing
end
