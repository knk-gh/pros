class Progress < ApplicationRecord

# has_many-belongs_to-------------------------------------------------------------

	has_many :steps, inverse_of: :progress
	has_many :likes, dependent: :destroy
	has_many :worries, dependent: :destroy
	belongs_to :user

end
