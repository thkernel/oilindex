class CartsController < ApplicationController
  layout "front"

  def add_to_cart
  end

  def update_cart
  end

  def delete_from_cart
  end

  def show
    @cart_items = @shopping_cart.cart_items
    subtotal = @cart_items.map{ |cart_item| Product.find(cart_item.product_id).selling_price_xof * cart_item.quantity}
    @subtotal = subtotal.sum
  end

  def add_cart_item_product_quantity
    cart_item = CartItem.find(params[:id])
    
    cart_item.update_column(:quantity, cart_item.quantity + 1)
    redirect_to show_cart_path
  end

  def remove_cart_item_product_quantity
    cart_item = CartItem.find(params[:id])
    
    if cart_item.quantity > 1
      cart_item.update_column(:quantity, cart_item.quantity - 1)
    end
    redirect_to show_cart_path
  end

end