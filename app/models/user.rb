class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :user_image


# validates-----------------------------------------------------------------------

  validates :name, presence: true,
                  length: { in: 1..15 }
  validates :email, presence: true
  validates :profile, length: { maximum: 300}
  validates :status, presence: true
  validates :report, length: { maximum: 45}


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
  has_many :prints, dependent: :destroy
  has_many :venues, dependent: :destroy

# フォロー系-------------------------------------------------------------

# 現在のユーザーがフォローしてたらtrueを返す
  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  # ユーザーをフォローする
  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  # ユーザーをアンフォローする
  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

# 検索-------------------------------------------------------------

  def self.search(search)
    if search
      User.where(['name LIKE ?', "%#{search}%"])
    else
      User.all
    end
  end


end
