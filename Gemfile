source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'puma', '~> 4.1'
gem 'pg', '~> 0.18.4'
gem 'redis', '~> 4.0'
gem 'sneakers'
gem 'json'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'searchkick'
gem 'sidekiq'
gem 'dotenv-rails', groups: [:development, :test]

group :development, :test do
  gem 'rspec-rails', '~> 3.9'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
