source 'http://rubygems.org'

gem 'rails', '3.1.10'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
# Removed as it breaks things when asset pipeline is disabled
#  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'rack-cors', :require => 'rack/cors'

group :development, :test do
  gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'rspec-rails', '>= 2.0.0.beta.10'
end

group :production do
  gem 'pg'
end
