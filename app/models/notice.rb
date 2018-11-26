class Notice < ApplicationRecord


# validates-----------------------------------------------------------------------

	validates :category, presence: true
	validates :text, presence: true,
					length: { maximum: 50}


end
