require "management"

describe Management do

  before(:each) do
    subject { Management.new }
  end

  it 'starts without any employees' do
    subject.employees.should be_empty
  end

  it 'can be assigned employees' do
    subject.add_employee("Bob")
    subject.employees.should include("Bob")
  end

end
