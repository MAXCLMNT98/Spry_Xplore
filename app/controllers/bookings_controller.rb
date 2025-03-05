class BookingsController < ApplicationController

 def index
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
    redirect_to "/", notice: "Vous avez réservé un van"
  else
    render :new, status: :unprocessable_entity
  end
 end
    
private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
