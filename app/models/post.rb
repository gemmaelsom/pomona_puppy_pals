class Post < ApplicationRecord
  belongs_to :dog, foreign_key: "dog_id"
  belongs_to :user
  has_one_attached :job_photo
  validates :payment, :start_time, :duration, :description, presence: true
  validates :payment, numericality: {greater_than: 0}
end
