class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    if @van.save
      redirect_to "/", notice: "Your van was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def van_params
    params.require(:van).permit(:model, :fuel, :price, :surface)
  end
end
