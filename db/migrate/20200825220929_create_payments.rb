class CreatePayments < ActiveRecord::Migration[6.0]
  drop_table :payments
  def change
    create_table :payments do |t|
      t.string :address
      t.string :payment_information
      t.string :summary
      t.string :calculation
      t.string :total_price

      t.timestamps
    end
  end
end
