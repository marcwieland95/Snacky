class Order < ApplicationRecord
  belongs_to :snack, inverse_of: :orders
  belongs_to :client, class_name: 'User', inverse_of: :orders

  enum status: [ open: 0, purchased: 1 ]

  def order_price
    snack.price * quantity
  end
end
