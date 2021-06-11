class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.datetime :date_of_birth
      t.string :phone_number
      t.string :username
      t.string :bio

      t.timestamps
    end
  end
end
