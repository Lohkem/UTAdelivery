class CartProductsController < ApplicationController
  skip_before_action :require_login
  skip_before_action :require_admin

  def index
    products = Product.where(id: shopping_cart.keys)
    @cart_items = []
    @total = 0
    products.each do |product|
      quantity = shopping_cart[product.id.to_s]
      sub_total = product.price * quantity
      @cart_items.push product: product, quantity: quantity, sub_total: sub_total
      @total += sub_total
    end
    #gastos de envio, deberia estar asignado en otra parte como
    #constante o como dato configurable, por cosas de tiempo, lo dejo asi
    @total += 300
  end

  def count
    render json: shopping_cart_count
  end

  def create
    add_product_to_cart cart_params
    count
  end

  def update
  end

  def destroy
    destroy_shopping_cart
  end

  private
    def cart_params
      params.require(:product_id)
      params.require(:quantity)
      params.permit(:product_id, :quantity)
    end
end
