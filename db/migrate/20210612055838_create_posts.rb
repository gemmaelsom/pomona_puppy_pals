class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.decimal :payment
      t.datetime :start_time
      t.decimal :duration
      t.string :description
      t.string :personality

      t.timestamps
    end
  end
end
