class Print < ApplicationRecord


# has_many-belongs_to-------------------------------------------------------------

	has_many :favorite_prints, dependent: :destroy
	belongs_to :user

# お気に入り系-------------------------------------------------------------

	def favorite_printed_by?(user)
      favorite_prints.where(user_id: user.id).exists?
    end

    def favorite_venued_by?(user)
      favorite_venues.where(user_id: user.id).exists?
    end


end
