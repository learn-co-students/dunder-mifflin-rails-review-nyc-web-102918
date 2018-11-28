class EmployeesController < ApplicationController
  before_action :find_employee, only:[:show, :edit, :update, :destroy]

 def index
   @employees = Employee.all
   render :index
 end


 def show
   render :show
 end

 def new
   @employee = Employee.new
   @dogs = Dog.all
 end

 def create

   @employee = Employee.create(employee_params)
   
   redirect_to employees_path
 end

 def edit
   @dogs = Dog.all
 end

 def update
   @employee.update(employee_params)
   redirect_to employee_path(@employee)
 end


 def destroy
   @employee.delete
   redirect_to employees_path
 end


private

 def find_employee
   @employee = Employee.find(params[:id])
 end

 def employee_params
   params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
 end


end
