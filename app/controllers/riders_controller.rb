class RidersController < ApplicationController
  before_action :require_login

  def index
    @q = Rider.ransack(params[:q])
    @riders = @q.result
  end
end
