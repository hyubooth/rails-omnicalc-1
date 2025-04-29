class RandomController < ApplicationController
  def new
  end

  def results
    @min = params.fetch(:min, "0").to_f
    @max = params.fetch(:max, "1").to_f
    @random = rand(@min..@max)
  end
end
