require "developer"

describe Developer do

  before(:each) do
    subject { Developer.new }
  end

  it 'can return its allocation amount' do
    Developer::ALLOCATION_AMOUNT.should eq(1000)
  end
end
