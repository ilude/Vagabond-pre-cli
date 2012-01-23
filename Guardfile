# Guardfile

guard 'bundler' do
  watch('Gemfile')
  watch('vagabond.gemspec')
end

guard 'rspec', :version => 2, :cli => '--no-color --format doc' do
  watch(%r{^spec/.+_spec\.rb})
  watch(%r{^lib/(.+)\.rb}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb') { "spec" }

  # rails
  #watch (%r{^spec/models/.+_spec\.rb}) { "spec/models" }
  #watch('spec/spec_helper.rb') { "spec" }
  #watch('config/routes.rb') { "spec/routing" }
  #watch(%r{^app/controllers/.+_controller\.rb}) { "spec/controllers" }
  #watch(%r{^spec/.+_spec\.rb})
  #watch(%r{^app/(.+)\.rb}) { |m| "spec/#{m[1]}_spec.rb" }
  #watch(%r{^lib/(.+)\.rb}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  #watch(%r{^app/controllers/(.+)_(controller)\.rb}) { |m| ["spec/routing/#{m[1]#}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"]#}
end
