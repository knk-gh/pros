class FavoritePrint < ApplicationRecord

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :user
	belongs_to :print

end
