# u/Gemfile
source 'http://rubygems.org'

gem 'rails', '3.0.10'
#gem 'sqlite3'
gem 'mysql2', "< 0.3"
gem 'high_voltage'
gem 'configatron'
gem 'flash-message-conductor'

# Bundle gems for the local environment
group :development, :test do
  gem 'capybara'              # Ruby web browser / parser
  gem 'cucumber-rails'        # Cucumber for BDD testing
  gem 'database_cleaner'      # Cleans your DB between tests
  gem 'factory_girl_rails'    # Factories > Fixtures (opinion)
  gem 'rspec-rails', '~> 2.4' # RSpec for unit tests
end

gem 'simplecov', '>= 0.4.0', :require => false, :group => :test
