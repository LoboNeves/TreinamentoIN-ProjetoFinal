class CreateCarts < ActiveRecord::Migration[6.0]
  drop_table :carts
  def change
    create_table :carts do |t|
      t.string :name
      t.string :amount
      t.string :unit_price
      t.string :total_price

      t.timestamps
    end
  end
end
