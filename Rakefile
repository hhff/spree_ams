require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
require 'spree/testing_support/extension_rake'

RSpec::Core::RakeTask.new

task :default do
  if Dir["spec/dummy"].empty?
    Rake::Task[:test_app].invoke
    Dir.chdir("../../")
  end
  Rake::Task[:spec].invoke
end

desc 'Generates a dummy app for testing'
task :test_app do
  ENV['LIB_NAME'] = 'spree_ams'
  Rake::Task['extension:test_app'].invoke
end

unless Dir["spec/dummy"].empty?
  APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)
  load 'rails/tasks/engine.rake'
end