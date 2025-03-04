class BookingsController < ApplicationController
  
     def index
      @bookings = Booking.all
    end
  
    def new
        @booking = Booking.new
    end
end
