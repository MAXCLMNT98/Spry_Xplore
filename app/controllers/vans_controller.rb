class VansController < ApplicationController
  def index
    @vans = Van.all

    @markers = @vans.geocoded.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude
      }
    end
  end

  def show
    @van = Van.find(params[:id])
    if @van.nil?
      redirect_to vans_path, alert: "Van non trouvé."
    end
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    if @van.save
      redirect_to vans_path, notice: "Votre van a bien été créé"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def van_params
    params.require(:van).permit(:model, :fuel, :price, :surface, :photo)
  end
end
