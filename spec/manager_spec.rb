require "manager"

describe Manager do

  before(:each) do
    subject { Manager.new }
  end

  it 'should be able to generate a report' do
    subject.allocation_report.should_not be_nil
  end

  it 'should have an allocation' do
    subject.allocation_amount.should_not be_nil
  end
end
