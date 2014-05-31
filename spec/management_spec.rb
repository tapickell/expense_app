require "management"

describe Management do
  class Developer
  end

  before(:each) do
    subject { Management.new }
  end

  it 'initializes without any employees' do
    subject.employees.should be_empty
  end

  it 'can be assigned employees' do
    developer = Developer.new
    subject.add_employee(developer)
    subject.employees.should include(developer)
  end

  it 'can calculate its waranted allocation amount' do
    developer = Developer.new
    subject.add_employee(developer)
    subject.employee_allocations.should eq(1000)
  end

end
