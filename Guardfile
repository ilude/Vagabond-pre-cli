# Guardfile

guard 'bundler' do
  watch('Gemfile')
  watch('vagabond.gemspec')
end

guard 'rspec', :version => 2, :cli => '--no-color --format doc' do
  watch(%r{^spec/.+_spec\.rb})
  watch(%r{^lib/(.+)\.rb}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb') { "spec" }
end
