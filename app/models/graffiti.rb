class Graffiti < ApplicationRecord

	attachment :graffiti_image
	paginates_per 15


# validates-----------------------------------------------------------------------

	validates :graffiti_image, presence: true

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :user

end
