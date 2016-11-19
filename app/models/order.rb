class Order < ApplicationRecord

  after_initialize :set_defaults, unless: :persisted?
  # The set_defaults will only work if the object is new

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

  private

  def set_defaults
    self.quantity  ||= 1
  end
end
