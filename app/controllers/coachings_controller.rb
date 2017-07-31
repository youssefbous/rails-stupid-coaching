class CoachingsController < ApplicationController
  def answer
  end

  def ask
    @ask = params[:query]
  end
end
