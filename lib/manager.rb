require "management"
require "report_generation"
require 'allocation'

class Manager < Management
  include ReportGeneration
  include Allocation
end
