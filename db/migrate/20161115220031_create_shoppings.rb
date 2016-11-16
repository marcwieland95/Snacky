class CreateShoppings < ActiveRecord::Migration[5.0]
  def change
    create_table :shoppings do |t|
      t.references :shopper, foreign_key: true

      t.timestamps
    end
  end
end
