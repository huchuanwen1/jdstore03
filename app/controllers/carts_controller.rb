class CartsController < ApplicationController
  def clean
    current_cart.clean!
    flash[:warng] = "已清空购物"
    redirect_to carts_path
  end
  def checkout
    @order = Order.new
  end
end
