class CreateSnacks < ActiveRecord::Migration[5.0]
  def change
    create_table :snacks do |t|
      t.string :name
      t.text :description
      t.money :price
      t.attachment :image

      t.timestamps
    end
  end
end
