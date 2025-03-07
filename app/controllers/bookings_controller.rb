class BookingsController < ApplicationController
  before_action :set_booking, only: [:accept, :reject]
  def index
    @bookings = Booking.all
    @bookings_as_visitor = current_user.bookings_as_visitor
    @bookings_as_owner = current_user.bookings_as_owner
    @available_vans = current_user.vans.where(status: 'Disponible')
  end
  def show
    @booking = Booking.find(params[:id])
    if @booking.nil?
      redirect_to vans_path, alert: "reservation non trouvé non trouvé."
    end
  end
  
  def new
    @van = Van.find(params[:van_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @van = Van.find(params[:van_id])
    @booking.van = @van
    @booking.status = "En attente"

    if @booking.save!
      @van.update(status: 'Réservé')
      redirect_to "/bookings", notice: "Votre réservation de van a été créée et est en attente."
    else
      redirect_to @van, alert: 'Erreur : veuillez verifier la date'
    end
  end

  def accept
    if @booking.accept!
      redirect_to @booking, notice: 'La réservation a été acceptée.'
    else
      redirect_to @booking, alert: 'Erreur : réservation non acceptée.'
    end
  end

  def reject
    if @booking.reject!
      redirect_to @booking, notice: 'La réservation a été refusée.'
    else
      redirect_to @booking, alert: 'Erreur : réservation non refusée.'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
