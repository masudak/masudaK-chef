# See https://github.com/calavera/minitest-chef-handler/blob/master/examples/spec_examples/files/default/tests/minitest/example_test.rb
require 'minitest/spec'
describe 'rbenv' do
#  require 'chef/mixin/shell_out'
#  include Chef::Mixin::ShellOut
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources
  it 'installs git' do
    # minitest-chef-handler
    package('git').must_be_installed
  end
  it "clone rbenv" do
    file("/home/vagrant/.rbenv/bin/rbenv").must_exist
  end
#   it "only root can modify the config file" do
#     file("/etc/fstab").must_have(:mode, "644").with(:owner, "root").and(:group, "root")
#   end
#  it "cherrypick the mysql connector and set the correct owner and group" do
#    file("/usr/local/foozball/mysql-connector-java-5.1.19-bin.jar").must_exist.with(:owner, "foobarbaz").and(:group, "foobarbaz")
#  end
end