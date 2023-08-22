class InstrumentsController < ApplicationController

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
