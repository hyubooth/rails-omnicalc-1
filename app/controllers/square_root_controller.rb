class SquareRootController < ApplicationController
  def new
  end

  def results
    @the_num_r = params[:users_number].to_f
    @the_result_r = @the_num_r ** 0.5
  end
end
