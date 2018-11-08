class Graffiti < ApplicationRecord

	attachment :graffiti_image

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :user

end
