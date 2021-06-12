class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :photo, dependent: :destroy
  has_many :dogs
  has_many :roles
  has_many :posts, foreign_key: 'poster_id'
  has_many :posts, foreign_key: 'walker_id'
end
