class EmployeesController < ApplicationController
	before_action :set_employee, only: [:show, :update, :destroy]
	def index
		employee = Employee.all
		render :json => employee
	end

	def create
		@employee = Employee.new(employee_params)
    if @employee.save
      SendEmployeeMailerJob.perform_later(@employee)
      # EmployeeMailer.with(employee: @employee).welcome_email.deliver_later
      render json: @employee, status: :created, location: @employee

    else
      render json: @employee.errors, status: :unprocessable_entity
    end
	end

	def show
    render json: @employee
  end

	def update
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @employee.destroy
  end

	private

	def set_employee
      @employee = Employee.find(params[:id])
  end

	def employee_params
		params.require(:employee).permit(:first_name, :last_name, :has_email, :date_of_joining, 
      :employee_id, :email, :phone_number, :qualification, :resign_date, :is_resign, :gender,
      :date_of_birth, :adhar_card, :pan_card)	
	end
end
