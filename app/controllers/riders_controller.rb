class RidersController < ApplicationController
  def index
    @q = Rider.ransack(params[:q])
    @riders = @q.result
  end
end
