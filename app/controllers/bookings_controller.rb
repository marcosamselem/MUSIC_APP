class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @instrument = Instrument.find(params[:instrument_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @instrument = Instrument.find(params[:instrument_id])
    @booking.instrument_id = @instrument.id
    @booking.user_id = current_user.id
  if @booking.save
      redirect_to confirmation_booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def confirmation
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end)
  end

end
