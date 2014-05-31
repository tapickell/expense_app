require "management"
require "entity"

describe Management do
  class TestClass < Entity
    ALLOCATION_AMOUNT = 2000
  end

  before(:each) do
    subject { Management.new }
  end

  it 'starts without any employees' do
    subject.employees.should be_empty
  end

  it 'can be assigned employees' do
    subject.add_employee(TestClass.new)
    subject.employee_allocations.should include(2000)
  end

end
