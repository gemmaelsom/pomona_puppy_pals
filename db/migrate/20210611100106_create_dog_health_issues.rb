class CreateDogHealthIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_health_issues do |t|
      t.string :health_issue

      t.timestamps
    end
  end
end
