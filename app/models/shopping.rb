class Shopping < ApplicationRecord
  belongs_to :shopper, class_name: 'User', inverse_of: :shoppings
  has_many :finished_orders, class_name: 'Order', inverse_of: :shopping

  def self.start(shopper)
    self.create(shopper: shopper)
  end

  def finish_shopping(updated_data)
    finished_order_ids = updated_data[:finished_orders]
    orders = []
    finished_order_ids.each do |order_id|
      orders << Order.find(order_id) unless order_id.blank?
    end

    self.update(finished_orders: orders)

    self.finished_orders.each do |order|
      order.purchased!
    end
  end


end


