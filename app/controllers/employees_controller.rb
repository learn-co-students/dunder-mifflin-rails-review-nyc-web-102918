class EmployeesController < ApplicationController
  before_action :find_employee, only:[:show,:update, :edit ]
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def edit
  end

  def update
    #refactor! 
    @employee = Employee.update(employee_params)

    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :edit
    end

  end

  private 

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end
end

