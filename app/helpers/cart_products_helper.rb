module CartProductsHelper
  def add_product_to_cart(cart_params)
    product_id = cart_params[:product_id].to_s
    quantity = cart_params[:quantity].to_i

    unless shopping_cart.key? product_id
      shopping_cart[product_id] = 0
    end

    shopping_cart[product_id] += quantity
  end

  def destroy_shopping_cart
    session.delete :shopping_cart
  end

  def shopping_cart_count
    count = 0
    shopping_cart.each do |key, value|
      count += value
    end
    count
  end

  def shopping_cart
    unless session.key? :shopping_cart
      session[:shopping_cart] = Hash.new
    end
    session[:shopping_cart]
  end
end
