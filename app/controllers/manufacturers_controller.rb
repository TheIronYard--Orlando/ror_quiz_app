class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])

    if @manufacturer.update(manufacturer_params)
      flash[:notice] = "Successfully updated"
      redirect_to @manufacturer

    else
      render 'edit'
    end
  end


  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :domestic)
  end
end
