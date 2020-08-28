class ChangeLikeOfProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :like, :integer, "USING "like"::integer"
  end
end
