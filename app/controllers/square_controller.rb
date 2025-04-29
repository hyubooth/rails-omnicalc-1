class SquareController < ApplicationController
  def new
  end

  def results
    @the_num = params[:users_number].to_f
    @the_result = @the_num ** 2
  end
end
