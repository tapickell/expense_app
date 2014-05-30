require "department"

describe Department do

  before(:each) do
    subject { Department.new }
  end

  it 'should be able to generate a report' do
    subject.allocation_report.should_not be_nil
  end
end
