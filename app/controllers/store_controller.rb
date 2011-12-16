class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all
    @session_counter = session_count
    @cart = current_cart
  end

end
