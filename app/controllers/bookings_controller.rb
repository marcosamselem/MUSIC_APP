class BookingsController < ApplicationController

  def index
     @bookings = current_user.bookings
  end

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

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      flash[:success] = "Booking successfully deleted."
    else
      flash[:error] = "An error occurred while deleting the booking."
    end
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end)
  end

end
