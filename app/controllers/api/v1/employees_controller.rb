class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employees.new(first_name: params["first_name"],
                              last_name: params["last_name"])

    if @employees.save
      redirect_to "/api/v1/employee/#{@employees.id}.json"
    else
      render json: {errors: @employees.errors.full_messages}, status: 422
    end
  end

  def show
    @employee = Employees.find(params[:id])
  end

end
