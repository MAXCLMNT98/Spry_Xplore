class BookingsController < ApplicationController
  
     def index
      @bookings = Booking.all
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
          redirect_to "/", notice: "tu as réserver un van"
        else
          render :new, status: :unprocessable_entity
        end
      end
end
private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end
