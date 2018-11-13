class Graffiti < ApplicationRecord

	attachment :graffiti_image


# validates-----------------------------------------------------------------------

	validates :graffiti_image, presence: true

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :user

end
