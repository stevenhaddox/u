# uRL Shortener
---

uRL Shortener is a simple app to shorten URLs as an example for how to do BDD & TDD with Rails 3.

## Dependencies

Ensure you have QT and libtiff installed:

```bash
# For OS X:
brew install libtiff
brew install qt
```

## Getting Started

```bash
git clone https://github.com/stevenhaddox/u.git
cd u
bundle install
# Create config/database.yml from config/database.yml.example
bundle exec rake db:create
bundle exec rake db:migrate RAILS_ENV=test
bundle exec rake db:migrate
bundle exex rspec spec
bundle exec cucumber
```
