
def delete_test_build
  box_build = File.join(Dir.pwd, 'builds', 'rspec_test')
  if Dir.exists? box_build
    FileUtils.remove_dir box_build
  end
end