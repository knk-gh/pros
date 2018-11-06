class Print < ApplicationRecord


# has_many-belongs_to-------------------------------------------------------------

	has_many :favorite_prints, dependent: :destroy


end
