class CreateProducts < ActiveRecord::Migration[6.0]
  drop_table :products
  def change
    create_table :products do |t|
      t.string :like
      t.string :image
      t.string :name
      t.float :price
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
