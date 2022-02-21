class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.island = Island.find(params[:island_id])
    if @booking.save
      redirect_to bookings_path, notice: "Great your booking was created"
    else
      render "islands/show"
    end
  end

  def accept
  end

  def refuse
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :state)
  end
end
