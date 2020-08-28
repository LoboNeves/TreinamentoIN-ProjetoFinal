class ChangeLikeOfProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :like, 'integer USING CAST(like AS integer)'
  end
end
