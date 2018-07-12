class OrdersController < ApplicationController
  def new
  end

  def create
  end

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    @orders = Order.find(params[:id])
  end
end
