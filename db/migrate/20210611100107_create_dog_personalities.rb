class CreateDogPersonalities < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_personalities do |t|
      t.string :personality_trait

      t.timestamps
    end
  end
end
