require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Users Model" do
  it 'can construct a new instance' do
    @users = Users.new
    refute_nil @users
  end
end
