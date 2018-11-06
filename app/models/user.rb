class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# has_many-belongs_to-------------------------------------------------------------

	has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
	has_many :followings, through: :following_relationships
	has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
	has_many :followers, through: :follower_relationships

	has_many :graffitis, dependent: :destroy
	has_many :progresses, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :worries, dependent: :destroy
	has_many :favorite_prints, dependent: :destroy
	has_many :favorite_venues, dependent: :destroy
end
