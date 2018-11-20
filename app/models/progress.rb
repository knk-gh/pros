class Progress < ApplicationRecord

	has_many :steps, inverse_of: :progress
	accepts_nested_attributes_for :steps, allow_destroy: true

    scope :created_today, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }


# 昨日投稿された Post を取得
  scope :created_yesterday, -> { where(created_at: 1.day.ago.all_day) }
# validates-----------------------------------------------------------------------

	validates :page, presence: true



# has_many-belongs_to-------------------------------------------------------------

	has_many :likes, dependent: :destroy
	has_many :worries, dependent: :destroy
	has_many :step_colors, dependent: :destroy
	accepts_nested_attributes_for :step_colors, allow_destroy: true  # fields_forを定義するためのメソッド
	belongs_to :user


# いいね系-------------------------------------------------------------

	def liked_by?(user)
      likes.where(user_id: user.id).exists?
    end

    def worried_by?(user)
      worries.where(user_id: user.id).exists?
    end

# 検索-------------------------------------------------------------

    def self.search(search)
		if search
		  Progress.where(['dead_line LIKE ?', "%#{search}%"])
		else
		  Progress.all
		end
	end

end
