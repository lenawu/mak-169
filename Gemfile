source 'https://rubygems.org'

ruby '2.2.2'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library. 3.1.0 corresponds to jquery 1.11.0, which is required by our bootstrap
gem 'jquery-rails', '3.1.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# User authentications
gem 'devise'
# Annotate models with the attributes available to them
gem 'annotate'

# Gem for Owl Carousel

gem 'owlcarousel-rails'

gem 'haml-rails'
gem 'simple_form'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'mail_form', '~> 1.5.0.rc'

gem "simple_calendar"

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  
  # If you plan to use JavaScript/CoffeeScript
  # gem 'jasmine-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Setup Cucumber, RSpec, autotest support
group :test do
  gem 'rake', '10.5.0' 
  gem 'rspec-rails'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'codeclimate-test-reporter', require: false
  gem 'test-unit'
  # Basic imperative step defs
  
  # required for Cucumber
  gem 'database_cleaner'
  gem 'autotest-rails'
  # gem 'factory_girl_rails' # if using FactoryGirl
  gem 'metric_fu' # collect code metrics
end

group :production do
  # Use PostgreSQL in production (Heroku)
  gem 'pg'
  # Heroku specific production settings
  gem 'rails_12factor'
end

