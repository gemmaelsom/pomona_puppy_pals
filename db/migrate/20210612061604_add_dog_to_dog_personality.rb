class AddDogToDogPersonality < ActiveRecord::Migration[6.1]
  def change
    add_reference :dog_personalities, :dog, null: false, foreign_key: true
  end
end
