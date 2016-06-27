# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_ams'
  s.version     = '3.1.0'
  s.summary     = 'Use Active Model Serializers with Spree.'
  s.description = 'This gem allows Spree to respond as per the Active Model Serializers gem, while keeping the original api intact.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Hugh Francis'
  s.email     = 'me@hughfrancis.me'
  s.homepage  = 'http://www.spreecommerce.com'

  #s.files       = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.1.0'
  s.add_dependency 'spree_api'
  s.add_dependency 'active_model_serializers', '~> 0.8.2'
  s.add_dependency 'apitome'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec_api_documentation'
end
