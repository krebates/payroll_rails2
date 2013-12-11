class SalesController < ApplicationController
  def index
    # make your sales objects available to the correlating view here
    @employee_sales_array = []
    @sales = Sale.get_employees_sale
    @employees = Employee.get_employees
    @sales.each do |sale|
      @employees.each do |employee|
        if sale.last_name.to_s == employee.last_name.to_s
          @employee_sales_array << [first_name: employee.first_name, last_name: employee.last_name, amount: sale.salary]
        end
      end
    end
  end

end
