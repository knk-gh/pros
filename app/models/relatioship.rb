class Relatioship < ApplicationRecord

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :follower, class_name: "User"
	belongs_to :following, class_name: "User"
end
