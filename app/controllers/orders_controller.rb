class OrdersController < ApplicationController
  before_action :require_login
  skip_before_action :require_admin

  def index
    @orders = Order.where(user: current_user).group(:order_id)
  end

  def new
  end

  def create
    order_id = SecureRandom.uuid
    user_id = current_user.id
    orders = []
    shopping_cart.each do |product_id, quantity|
      orders.push order_id: order_id, user_id: user_id, product_id: product_id, quantity: quantity
    end
    Order.create(orders)
    destroy_shopping_cart
    redirect_to orders_path
  end

  def show
    @items = Order.where(order_id: params[:id])
    @order_id = params[:id]
  end
end
