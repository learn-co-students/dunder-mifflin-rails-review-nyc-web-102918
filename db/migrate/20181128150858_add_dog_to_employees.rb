class AddDogToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :dog
  end
end
