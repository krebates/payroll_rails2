class EmployeesController < ApplicationController

    # make your employee objects available to the correlating view here
  def index
    @employees = Employee.get_employees
  end
end
