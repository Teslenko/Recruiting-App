source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.1'

gem 'rails', '~> 5.1.4'

gem 'bcrypt','~> 3.1.7'

gem 'paperclip'#, "~> 5.1"

gem 'image_magick'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 2.7.2'

gem 'bootstrap-sass', ' 3.3.7'

gem 'jquery-rails'

gem 'carrierwave' # через Gemfile

gem 'high_voltage', '~> 3.0.0'

gem 'jquery-ui-rails'

gem 'puma', '~> 3.7'

gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'devise'

gem 'responders'

gem 'ransack'

gem 'mini_magick'

group :development, :test do
  gem 'sqlite3'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :development do
   gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
   gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# gem 'mysql2', '>= 0.3.18', '< 0.5'
group :production do
  gem 'pg', '~> 0.21.0'
  gem 'rails_12factor'
end
