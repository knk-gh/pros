class StepColor < ApplicationRecord

# has_many-belongs_to-------------------------------------------------------------

	belongs_to :progress, optional: true

# validates-----------------------------------------------------------------------

	validates :step_name, presence: true,
						length: { in: 1..7 }

end
