require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Notice Model" do
  it 'can construct a new instance' do
    @notice = Notice.new
    refute_nil @notice
  end
end
