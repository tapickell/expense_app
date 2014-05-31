require "management"

describe Management do
  class Developer; end
  class QaTester; end
  class Manager < Management; end

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

  it 'can calculate allocation with managers and nested employees' do
    developer = Developer.new
    manager = Manager.new
    qa_tester = QaTester.new

    manager.add_employee(qa_tester)
    subject.add_employee(developer)
    subject.add_employee(manager)

    subject.employee_allocations.should eq(1800)
  end

  it 'can calculate allocation with deeply nested managers and employees' do
    developer1 = Developer.new
    developer2 = Developer.new
    manager1 = Manager.new
    manager2 = Manager.new
    qa_tester1 = QaTester.new
    qa_tester2 = QaTester.new

    manager2.add_employee(developer2)
    manager2.add_employee(qa_tester2)
    manager1.add_employee(manager2)
    manager1.add_employee(qa_tester1)
    manager1.add_employee(developer1)
    subject.add_employee(manager1)

    subject.employee_allocations.should eq(3600)
  end
end
