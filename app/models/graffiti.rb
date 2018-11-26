class Graffiti < ApplicationRecord

	attachment :graffiti_image
	paginates_per 15


# validates-----------------------------------------------------------------------

	validates :graffiti_image, presence: true
	validates :graffiti_text, length: { maximum: 300}

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :user

end
