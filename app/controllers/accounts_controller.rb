class AccountsController < ApplicationController
	before_action :set_account, only: [:show, :update, :destroy]
	def index
		account = Account.all
		render :json => account
	end

	def create
		@account = Account.new(account_params)
    if @account.save
      render json: @account, status: :created, location: @account
    else
      render json: @account.errors, status: :unprocessable_entity
    end
	end

	def show
    render json: @account
  end

	def update
    if @account.update(account_params)
      render json: @account
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @account.destroy
  end

	private

	def set_account
      @account = Account.find(params[:id])
  end

	def account_params
		params.require(:account).permit(:account_holder_name,:account_number,:bank_name,:ifsc_code, :branch_name,:employee_id)	
	end
end
