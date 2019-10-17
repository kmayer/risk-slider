# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path("config/application", __dir__)

RaygunReactOnRails::Application.load_tasks

if Rails.env.development? || Rails.env.test?
  Rake::Task[:default].clear_prerequisites
  task default: %i[spec jest lint]
end

task :jest do
  sh "yarn jest"
end

task :lint do
  Rake::Task[:rubocop].invoke
  sh "yarn lint:js"
  sh "yarn lint:css"
end
