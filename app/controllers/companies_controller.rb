class CompaniesController < ApplicationController
	before_action :set_company, only: [:show, :update, :destroy]
	def index
		company = Company.all
		render :json => company
	end

	def create
		@company = Company.new(company_params)
    if @company.save
      render json: @company, status: :created, location: @company
    else
      render json: @company.errors, status: :unprocessable_entity
    end
	end

	def show
    render json: @company
  end

	def update
    if @company.update(company_params)
      render json: @company
    else
      render json: @company.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @company.destroy
  end

	private

	def set_company
      @company = Company.find(params[:id])
  end

	def company_params
		params.require(:company).permit(:previous_company, :total_experience, :previous_designtion, :designation, :employee_id)	
	end
end
