# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in stdgems-version.gemspec
gemspec

group 'development_common' do
  gem 'bundler', require: false
  gem 'rake', require: false
end

group 'development_test' do
  gem 'rspec', '~> 3.12.0', require: false
end

group 'development_lint' do
  gem 'rubocop', '~> 1.56.3', require: false
end

group 'development_vscode' do
  gem 'debug', require: false
  gem 'ruby-lsp', require: false
end
