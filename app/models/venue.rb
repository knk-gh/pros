class Venue < ApplicationRecord


# has_many-belongs_to-------------------------------------------------------------

	has_many :favorite_venues, dependent: :destroy
	belongs_to :user

# validates-----------------------------------------------------------------------

	validates :venue_name, presence: true
	validates :postal_code, presence: true
	validates :address, presence: true
	validates :tel, presence: true
	validates :venue_url, presence: true
	validates :latitude, presence: true
	validates :longitude, presence: true


# お気に入り系-------------------------------------------------------------

	def favorite_venued_by?(user)
      favorite_venues.where(user_id: user.id).exists?
    end

end