class Dog < ApplicationRecord
  belongs_to :user # ok
  has_one :dog_personality
  has_one :post
  has_many :dog_health_issues
end
