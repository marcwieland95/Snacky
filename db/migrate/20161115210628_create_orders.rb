class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :snack, foreign_key: true
      t.integer :quantity
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
