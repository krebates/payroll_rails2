require 'CSV'

class Sale
  def initialize(row)
    @attributes = row
  end

  def self.get_employees_sale
    sales_employees = []
    CSV.foreach(Rails.root.join("db/data/sales_employee.csv"), headers: true) do |attributes|
      sale_employee = Sale.new(attributes)
      sales_employees << sale_employee
    end
    sales_employees
  end

  def last_name
    @attributes["last_name"]
  end

  def salary
    @attributes["gross_salary"]
  end

  # def net_pay
  #   #Call on salary to get the number of the salary that we have to add to the bonus/whatever
  #   #Call on Sale.new(last_name) so it gives us his total number of sales
  #   # and then if it matches the quota, we add the commision to the salary
  # end
end




# class Sale
#   def initialize(name)
#     @name = name
#     sales = []
#     CSV.foreach(Rails.root.join("db/data/employees.csv"), headers: true) do |attributes|
#       employee = Employee.new(attributes)
#       @sales << employee
#     end
#     sales
#   end

#   def last_name
#     @attributes["last_name"]
#   end

#   def gross_sale_value
#     @attributes["gross_sale_value"]
#   end
# end


