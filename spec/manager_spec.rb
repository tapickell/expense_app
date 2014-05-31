require "manager"

describe Manager do
  class Developer
  end

  before(:each) do
    subject { Manager.new }
  end

  it 'should be able to generate a report' do
    subject.employee_allocations.should_not be_nil
  end

  it 'should add an allocation amount for itself' do
    developer = Developer.new
    subject.add_employee(developer)
    subject.employee_allocations.should eq(1300)
  end
end
