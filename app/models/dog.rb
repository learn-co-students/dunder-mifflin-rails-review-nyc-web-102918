class Dog < ApplicationRecord
  has_many :employees

  def employee_count
    self.employees.count
  end

  def self.sort_by_employee_count
    Dog.all.sort_by(&:employee_count).reverse
  end

end
