class Post < ApplicationRecord
  belongs_to :dog, foreign_key: "dog_id"
  belongs_to :user, foreign_key: "poster_id"
  belongs_to :user, foreign_key: "walker_id", optional: true
  has_one_attached :job_photo
end
