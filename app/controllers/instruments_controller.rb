class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = instrument.new(instrument_params)
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
