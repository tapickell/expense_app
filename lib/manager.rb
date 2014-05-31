require "management"
require "report_generation"

class Manager < Management
  include ReportGeneration
  ALLOCATION_AMOUNT = 300
end
