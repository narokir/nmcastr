source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.7.1"
gem "rails", "~> 6.0" # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "pg", "~> 0.18" # Use postgresql as the database for Active Record
gem "puma", github: "puma/puma" # Use Puma as the app server
gem "sass-rails", "~> 5.0" # Use SCSS for stylesheets
gem "uglifier", ">= 1.3.0" # Use Uglifier as compressor for JavaScript assets
gem "coffee-rails", "~> 5.0" # Use CoffeeScript for .coffee assets and views
gem "jquery-rails" # Use jquery as the JavaScript library
gem "turbolinks", "~> 5" # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "jbuilder", "~> 2.5" # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "bootstrap", "~> 4.5.0" # https://github.com/twbs/bootstrap-rubygem
gem "simple_form" #https://github.com/plataformatec/simple_form
gem "devise"
gem "omniauth-facebook"
gem "omniauth-google-oauth2"
gem "railties", "~> 6.0", ">= 6.0.3.2"
gem "faker"
gem "model_probe"
gem "figaro"

# gem 'redis', '~> 3.0' # Use Redis adapter to run Action Cable in production
# gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password
# gem 'capistrano-rails', group: :development # Use Capistrano for deployment

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
