class CartProductsController < ApplicationController
  skip_before_action :require_login
  skip_before_action :require_admin

  def create
    add_product_to_cart cart_params
    render json: shopping_cart_count
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
