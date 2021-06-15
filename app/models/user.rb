class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :photo, dependent: :destroy
  has_one :dog, dependent: :destroy
  has_many :roles, dependent: :destroy
  has_many :listings, class_name: "Post" 
  has_many :posts
  validates :email, :first_name, :last_name, :country, :post_code, :street_name, :city, :state, :birthday, :phone_number, :display_name, :bio, presence: true
end
