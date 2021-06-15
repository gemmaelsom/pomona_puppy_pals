class Dog < ApplicationRecord
  belongs_to :user 
  has_one :dog_personality
  has_one :post
  has_many :dog_health_issues
  has_one_attached :photo
  validates :name, :breed, :age, presence: true
end
