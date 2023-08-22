class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instruments.find(params[:id])
  end
end
