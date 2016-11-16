class Order < ApplicationRecord
  belongs_to :snack, inverse_of: :orders
  belongs_to :client, class_name: 'User', inverse_of: :orders
  belongs_to :shopping, inverse_of: :finished_orders, optional: true

  enum status: [ :open, :purchased ]

  def order_price
    snack.price * quantity
  end

  def to_s
    "#{quantity} x #{snack} for #{client}"
  end
end
