source 'https://rubygems.org'

gem 'rails', '4.2.2'

# database
platform :jruby do
  gem 'activerecord-jdbc-adapter', '1.3.19'
  gem 'activerecord-jdbcmysql-adapter', '1.3.19'
end

# client-side
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyrhino'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :test do
  # testing
  gem 'minitest', '~> 5'
  gem 'rspec-rails', '2.14.0' #, '~> 3.0.0.beta'
  gem 'capybara', '2.1.0'
  gem 'poltergeist', '1.6.0'
  gem 'site_prism', '~> 2.5'
  # database
  gem 'jdbc-sqlite3', '3.8.11.2', :platform => :jruby
  gem 'activerecord-jdbcsqlite3-adapter', '~> 1.3.3', :platform => :jruby
  # gem 'sqlite3', :platform => :mri
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
