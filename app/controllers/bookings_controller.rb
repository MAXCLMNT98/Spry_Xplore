class BookingsController < ApplicationController

     def index
        @bookings = Booking.all
        # @bookings_as_visitor = current_user.bookings_as_visitor
        # @bookings_as_owner = current_user.bookings_as_owner
      end

    def new
        @booking = Booking.new
    end
end
