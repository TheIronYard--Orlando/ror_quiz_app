class FactoriesController < ApplicationController


	def new
		@factory = Factory.new
		# @manufacturers = Manufacturer.find(params[:manufacturer_id])
		@car_models = CarModel.find(params[:car_model_id])
	end

	def create
		@car_models = CarModel.find(params[:car_model_id])
		# @manufacturer = Manufacturer.find(params[:manufacturer_id])
		@factory = @car_model.factories.create(params.require(:factory).permit(:name, :state, :city, :unionized))
		redirect_to	manufacturer_path
	end	

	def show
		@car_models = CarModel.find(params[:car_model_id])
		# @manufacturer = Manufacturer.find(params[:manufacturer_id])
    	@factory = @manufacturer.factory.find(params[:id])
    end


end    # END class














