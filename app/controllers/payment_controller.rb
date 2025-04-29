class PaymentController < ApplicationController
  def new
  end

  def results
    @apr = params[:apr].to_f
    @year = params[:year].to_f
    @pv = params[:pv].to_f

    rate = @apr / 100 / 12
    n = @year * 12

    if @year <= 0
      @pmt = 0
    elsif rate == 0
      @pmt = @pv / n
    else
      @pmt = @pv * (rate / (1 - (1 + rate)**(-n)))
    end
  end
end
