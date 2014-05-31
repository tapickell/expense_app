require "department"

describe Department do
  class Developer
  end

  before(:each) do
    subject { Department.new }
  end

  it 'should be able to generate a report' do
    subject.employee_allocations.should_not be_nil
  end

  it 'should not add allocation amount for itself' do
    developer = Developer.new
    subject.add_employee(developer)
    subject.employee_allocations.should eq(1000)
  end
end
