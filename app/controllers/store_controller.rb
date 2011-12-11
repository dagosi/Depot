class StoreController < ApplicationController
  def index
    @products = Product.all
    @session_counter = session_count
    
  end

end
