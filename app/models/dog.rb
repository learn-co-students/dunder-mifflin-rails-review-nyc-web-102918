class Dog < ApplicationRecord
  has_many :employees

  def self.sorted
    self.all.sort {|d1, d2| d2.employees.count <=> d1.employees.count}
  end
end
