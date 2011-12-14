class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  
  # validations
  validates :name, :address, :email, :pay_type, presence: true
  #validates :pay_type, :inclusion => Order.get_payments

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def get_payments
    pays = []
    TypePayment.all.each do |pay|
      pays << pay.name 
    end
    return pays
  end

end
