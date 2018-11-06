class Like < ApplicationRecord

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :user
	belongs_to :progress

end
