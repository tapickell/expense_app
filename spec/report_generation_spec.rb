require "report_generation"

describe ReportGeneration do
  class TestClass
    ALLOCATION_AMOUNT = 2000
  end

  before(:each) do
    subject { TestClass.new }
    subject.extend ReportGeneration
  end

  it 'can generate a report' do
    subject.allocation_report.should eq("$2000")
  end

end
