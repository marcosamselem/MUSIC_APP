class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user_id = current_user.id
    if @instrument.save
      redirect_to instruments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @instrument = Restaurant.find(params[:id])
  #   @instrument.destroy
  #   redirect_to instruments_path, status: :see_other
  # end


  private

  def instrument_params
    params.require(:instrument).permit(:name, :price, :location, :user_id, :image_url)
  end
end
