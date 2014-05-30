require "management"
require "report_generation"

class Department < Management
  include ReportGeneration
end
