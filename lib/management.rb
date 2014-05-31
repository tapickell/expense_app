require "yaml"

class Management
  attr_reader :employees

  def initialize
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def employee_allocations
    allocations = mapped_allocation_for(self)
    @employees.each do |employee|
      allocations += allocation_amount_for(employee)
    end
    allocations
  end

  def is_management?
    true
  end

  private

  def allocation_amount_for(employee)
    if employee.is_management?
      employee.employee_allocations
    else
      mapped_allocation_for(employee)
    end
  end

  def mapped_allocation_for(employee)
    allocation_map = YAML.load_file('allocations.yml')
    allocation_map[employee.class.name] || 0
  end
end
