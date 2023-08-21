class InstrumentsController < ApplicationController
  def index
    @istruments = Instrument.all
  end

  def show
    @instruments.find(params[:id])
  end
end
