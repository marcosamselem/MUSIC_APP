class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instruments.find(params[:id])
  end

  def new
    @instruments = Restaurant.new
  end

  def create
    @instruments = Instrument.new(instruments_params)
    if @instruments.save
      redirect_to instruments_path(@instruments)
    else
      render :new, status: :unprocessable_entity
    end
  end

end
