class AddDogToDogHealthIssue < ActiveRecord::Migration[6.1]
  def change
    add_reference :dog_health_issues, :dog, null: false, foreign_key: true
  end
end
