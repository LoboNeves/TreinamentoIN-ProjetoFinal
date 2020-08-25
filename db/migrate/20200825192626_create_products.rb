class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :like
      t.string :image
      t.string :name
      t.string :price
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
