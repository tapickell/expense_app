require "allocation"

describe Allocation do
  class TestClass; end

  before(:each) do
    subject { TestClass.new }
    subject.extend Allocation
  end

  it 'can returns its allocation amount' do
    subject.allocation_amount.should eq("$")
  end
end
