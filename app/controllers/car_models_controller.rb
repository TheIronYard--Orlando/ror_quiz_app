class CarModelsController < ApplicationController


	def new
		@manufacturer = Manufacturer.find(params[:manufacturer_id])
		@car_model = CarModel.new
	end

	def create
		@manufacturer = Manufacturer.find(params[:manufacturer_id])
		@car_model = @manufacturer.car_models.create(params.require(:car_model).permit(:name, :mpg, :price))
		redirect_to	manufacturer_path(@manufacturer)
	end	

	def show
		@manufacturer = Manufacturer.find(params[:manufacturer_id])
    	@car_model = @manufacturer.car_model.find(params[:id])
    	@factory = Factory.new
    end

end    # END class











