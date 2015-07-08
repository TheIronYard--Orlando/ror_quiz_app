class ManufacturersController < ApplicationController
  before_action :require_login, only: [:edit, :update, :destroy]

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    manufacturer_id
  end

  def edit
    manufacturer_id
  end

  def update
    manufacturer_id
    @manufacturer.update(params.require(:manufacturer).permit(:name, :domestic))
    flash[:notice] = "Manufacturer successfully updated!"
    redirect_to manufacturer_url
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy
    redirect_to root_url
  end

  private

  def manufacturer_id
     @manufacturer = Manufacturer.find(params[:id])
  end

end
