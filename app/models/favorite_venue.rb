class FavoriteVenue < ApplicationRecord

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :user
	belongs_to :venue

end
