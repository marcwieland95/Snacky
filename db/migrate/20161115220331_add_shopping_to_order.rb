class AddShoppingToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :shopping
  end
end
