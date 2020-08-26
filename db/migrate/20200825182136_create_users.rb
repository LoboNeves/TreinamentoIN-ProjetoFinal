class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      #t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :cep
      t.string :address
      t.string :residencial_number
      t.string :city
      t.string :neighborhood
      t.string :uf
      t.string :phone_number
      t.string :kind

      t.timestamps
    end
  end
end
