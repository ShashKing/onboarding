class AddressesController < ApplicationController
	before_action :set_address, only: [:show, :update, :destroy]
	def index
		address = Address.all
		render :json => address
	end

	def create
		@address = Address.new(address_params)
    if @address.save
      render json: @address, status: :created, location: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
	end

	def show
    render json: @address
  end

	def update
    if @address.update(address_params)
      render json: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @address.destroy
  end

	private

	def set_address
      @address = Address.find(params[:id])
  end

	def address_params
		params.require(:address).permit(:city, :state, :landmark, :home_number, :street, :pin_code, :locality, :district, :employee_id)	
	end
end
