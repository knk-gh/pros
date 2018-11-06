class Venue < ApplicationRecord

# has_many-belongs_to-------------------------------------------------------------

	has_many :favorite_venues, dependent: :destroy

end
