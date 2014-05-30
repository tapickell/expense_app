class Management
  attr_reader :employees

  def initialize
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end
end
