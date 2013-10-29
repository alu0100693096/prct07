$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec

desc "Ejecutar el programa principal"
task :bin do
  sh "ruby -I. lib/frac_main.rb"
end

desc "Ejecutar tests sobre la clase Fraccion"
task :test do
  sh "rspec -I. spec/frac_spec.rb --format documentation"
end

desc "Ejecutar tests y producir documentacion HTML"
task :thtml do
  sh "rspec -I. spec/frac_spec.rb --format html"
end
