class BookingsController < ApplicationController
    def new
        @bookin = Booking.new
    end
end
