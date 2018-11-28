class Employee < ApplicationRecord
  belongs_to:dog
  validates :alias, :title, uniqueness:true

  def to_s
    self.first_name + " " + self.last_name
  end

end




# No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that rule!)
