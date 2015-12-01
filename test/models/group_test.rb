require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Group Model" do
  it 'can construct a new instance' do
    @group = Group.new
    refute_nil @group
  end
end
