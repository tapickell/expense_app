require "entity"

class Management < Entity
  attr_reader :employee_allocations

  def initialize
    @employee_allocations = [self.allocation_amount]
  end

  def add_employee(employee)
    @employee_allocations << employee.allocation_amount
  end
end
