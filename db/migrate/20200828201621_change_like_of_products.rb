class ChangeLikeOfProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :like, :integer, using: 'like::integer', default: 0, null: false
  end
end
