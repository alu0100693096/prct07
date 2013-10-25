task :default => :bin

desc "Ejecutar el programa principal"
task :bin do
  sh "ruby lib/frac_main.rb"
end

desc "Ejecutar tests sobre la clase Fraccion"
task :test do
  sh "rspec -I. spec/frac_spec.rb --format documentation"
end

desc "Ejecutar tests y producir documentacion HTML"
task :thtml do
  sh "rspec -I. spec/frac_spec.rb --format html"
end
