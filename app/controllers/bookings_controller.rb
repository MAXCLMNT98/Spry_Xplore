class BookingsController < ApplicationController
  before_action :set_booking, only: [:accept, :reject]
  def index
    @bookings = Booking.all
    @bookings_as_visitor = current_user.bookings_as_visitor
    @bookings_as_owner = current_user.bookings_as_owner
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
    if @booking.save
      redirect_to "/", notice: "Vous avez réservé un van."
    else
      render :new, status: :unprocessable_entity
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
      redirect_to @booking, notice: 'La réservation a été rejetée.'
    else
      redirect_to @booking, alert: 'Erreur : réservation non rejectée.'
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
