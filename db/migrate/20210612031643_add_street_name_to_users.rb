class AddStreetNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :street_name, :string
  end
end
