class StoreController < ApplicationController
  def index
    @products = Product.all
    @session_counter = session_count
    @cart = current_cart
  end

end
