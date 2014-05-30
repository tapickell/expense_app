require "report_generation"

describe ReportGeneration do
  class TestClass
  end

  before(:each) do
    subject { TestClass.new }
    subject.extend ReportGeneration
  end

  it 'can generate a report' do
    subject.allocation_report.should eq("report")
  end

end
