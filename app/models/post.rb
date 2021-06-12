class Post < ApplicationRecord
  has_one :dog
  belongs_to :user, foreign_key: "poster_id"
  belongs_to :user, foreign_key: "walker_id"
end
