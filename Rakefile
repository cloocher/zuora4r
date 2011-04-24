require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
begin
  require 'jeweler'
rescue LoadError
  puts 'Jeweler not available. Install it with: [sudo] gem install jeweler'
end

task :test => :check_dependencies
task :default => :test

Jeweler::Tasks.new do |gem|
  gem.name = 'zuora4r'
  gem.summary = 'Zuora API client'
  gem.description = 'Simple Zuora API client for Ruby'
  gem.email = 'gene@ning.com'
  gem.homepage = 'http://github.com/cloocher/zuora4r'
  gem.authors = ['Cloocher']
  gem.files = FileList['CHANGES', 'zuora4r.gemspec', 'Rakefile', 'README', 'VERSION',
                       'lib/**/*', 'bin/**/*', 'config/**/*']
  gem.add_dependency 'soap4r', '>= 1.5.8'
  gem.add_dependency 'json_pure', '>= 1.4.6'
  gem.executables = ['zuora-query', 'zuora-create', 'zuora-update', 'zuora-bill-run', 'zuora-payment-run', 'zuora-delete', 'zq']
  gem.requirements = ['none']
  gem.bindir = 'bin'
end
Jeweler::GemcutterTasks.new

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ''
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "zuora4r #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
