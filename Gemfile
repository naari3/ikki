# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end
gem 'activerecord-session_store'
gem 'bcrypt'
gem 'jbuilder', '~> 2.5'
gem 'kaminari'
gem 'milligram'
gem 'mysql2'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.1'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'sidekiq-cron-tasks'
gem 'uglifier', '>= 1.3.0'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
gem 'canonical-rails'
gem 'commonmarker'
gem 'draper'
gem 'github-linguist'
gem 'html-pipeline'
gem 'html-pipeline-rouge_filter'
gem 'locale_kit'
gem 'meta-tags'
gem 'premailer-rails'
gem 'rails-i18n'
gem 'sitemap_generator'
gem 'slim-rails'
gem 'social-share-button'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
group :development do
  gem 'brakeman', require: false
  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-process', require: false
  gem 'guard-rails', require: false
  gem 'guard-rspec', require: false
  gem 'letter_opener'
  gem 'parser', '~> 2.4.0.x', require: false
  gem 'rubocop', require: false
  gem 'slim_lint', require: false
  gem 'spring-commands-rspec', require: false
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :test do
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'rails-controller-testing'
  gem 'rspec-power_assert'
  gem 'simplecov', require: false
end
