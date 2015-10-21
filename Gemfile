source 'https://rubygems.org'

gem 'rails', '4.2.1' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'dotenv-rails' # dot environment
gem 'pg' # Use postgresql as the database for Active Record
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.4.1'
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0' # Use CoffeeScript for .coffee assets and views
gem 'slim-rails', '~> 3.0.1'
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'therubyracer', platforms: :ruby # See https://github.com/rails/execjs#readme for more supported runtimes
gem 'turbolinks' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.
gem 'geocoder', '~> 1.2.8' # geographic coordinates
gem 'unicorn' # Use Unicorn as the app server

# authen & authorization
gem 'devise', '~> 3.4.1'
gem 'cancancan', '~> 1.10'
# gem 'bcrypt', '~> 3.1.7'

# group :development do
  # Use Capistrano for deployment
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-rails'
  gem 'capistrano-puma'
  gem 'capistrano-bundle'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
  gem 'annotate', '~> 2.6.6' #https://github.com/ctran/annotate_models - autogenerate scheme models
# end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails', '~> 3.2.1'
  gem 'factory_girl_rails', '~> 4.5.0' # factory definition loading
  gem 'guard', '~> 2.12.4'
  gem "guard-rspec", '~> 4.5.0', require: false
  gem 'guard-cucumber', '~> 1.5.4'
  gem 'rb-fsevent'
  gem 'spring-commands-rspec', '~> 1.0.4'
  gem 'cucumber-api-steps', '~> 0.13'
  gem 'test-queue', '~> 0.2.12'

  # convert erb to slim template
  gem  'html2slim'
end

gem 'faker'

group :test do
  gem 'faker'
  gem 'minitest'
  gem 'cucumber-rails', '~> 1.4.2', require: false
  gem 'capybara', '~> 2.4.4'
  gem 'capybara-screenshot', '~> 1.0.7' # capture screen shot during testing
  gem 'shoulda-matchers'
  # gem 'shoulda-callback-matchers'
  gem 'rspec-collection_matchers'
  gem 'launchy', '~> 2.4.3' # this lets us call save_and_open_page to see what's on a page for debugging
  gem 'poltergeist', '~> 1.6.0'
  gem 'selenium-webdriver', '~> 2.45.0'

  gem 'database_cleaner'
end

group :production do
  gem 'newrelic_rpm'
end


